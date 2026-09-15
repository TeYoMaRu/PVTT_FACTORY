-- =============================================================================
-- SQL Script: รวมข้อมูลแผนกสแลน (18 เครื่อง) และลบข้อมูลซ้ำซ้อน
-- รวมรหัส SHADING_NET และ SLAN เข้าสู่ SHADE_NET เป็นแผนกเดียวกัน
-- ปรับชื่อเครื่องจักรเป็น เครื่อง 1 ถึง เครื่อง 18 และลบรายการที่ซ้ำออก
-- =============================================================================

BEGIN;

-- -----------------------------------------------------------------------------
-- 1. ตรวจสอบและลงทะเบียนแผนกสแลน (SHADE_NET) ใน master_departments
-- -----------------------------------------------------------------------------
INSERT INTO master_departments (
  department_code, 
  department_name, 
  is_active, 
  sort_order, 
  max_waste_percent, 
  warning_percent
)
VALUES ('SHADE_NET', 'สแลน', true, 6, 3.00, 2.50)
ON CONFLICT (department_code) DO UPDATE SET
  department_name = 'สแลน',
  is_active = true;

-- -----------------------------------------------------------------------------
-- 2. รวมรหัสแผนกสแลนทั้งหมด (SLAN, SHADING_NET, และรายงานสแลนที่อาจติด DRILL) เข้าสู่ SHADE_NET
-- -----------------------------------------------------------------------------
UPDATE daily_waste_reports
SET 
  department_code = 'SHADE_NET',
  department = 'SHADE_NET'
WHERE department_code IN ('SLAN', 'SHADING_NET', 'slan', 'shading_net')
   OR (department_code = 'DRILL' AND (
        note ILIKE '%สแลน%' 
        OR product_name ILIKE '%สแลน%' 
        OR id IN (
          SELECT report_id 
          FROM daily_waste_report_items 
          WHERE problem_type ILIKE '%สแลน%'
        )
      ));

-- -----------------------------------------------------------------------------
-- 3. ปรับชื่อเครื่องจักรทั้ง 18 เครื่องของแผนกสแลน ให้เป็นมาตรฐานเดียวกัน (เครื่อง 1 - เครื่อง 18)
--    เช่น สแลน ทอ1 -> เครื่อง 1, สแลน ทอ2 -> เครื่อง 2, เครื่อง 7 -> เครื่อง 7
-- -----------------------------------------------------------------------------
UPDATE daily_waste_reports
SET machine_no = 'เครื่อง ' || (regexp_match(machine_no, '(\d+)'))[1]
WHERE department_code = 'SHADE_NET'
  AND machine_no ~ '\d+';

-- -----------------------------------------------------------------------------
-- 4. จัดการและลบข้อมูลที่ซ้ำซ้อน (Deduplication)
-- -----------------------------------------------------------------------------

-- 4.1 ย้ายรายการปัญหาย่อย (daily_waste_report_items) จากรายงานที่ซ้ำ ไปรวมกับรายงานหลักที่เก็บไว้
UPDATE daily_waste_report_items i
SET report_id = dup.keep_id
FROM (
  SELECT 
    r.id AS dup_id,
    FIRST_VALUE(r.id) OVER (
      PARTITION BY r.report_date, r.department_code, r.machine_no, r.shift
      ORDER BY 
        COALESCE(r.total_qty, 0) DESC,
        COALESCE(r.waste_qty, 0) DESC,
        r.created_at DESC
    ) AS keep_id
  FROM daily_waste_reports r
  WHERE r.department_code = 'SHADE_NET'
) dup
WHERE i.report_id = dup.dup_id
  AND dup.dup_id <> dup.keep_id;

-- 4.2 ลบรายการปัญหาย่อยที่ซ้ำกันในรายงานหลัก (ประเภทปัญหาเดียวกันและน้ำหนักเท่ากัน)
DELETE FROM daily_waste_report_items
WHERE id IN (
  SELECT id FROM (
    SELECT id,
           ROW_NUMBER() OVER (
             PARTITION BY report_id, problem_type, waste_weight_kg
             ORDER BY id ASC
           ) AS rn
    FROM daily_waste_report_items
  ) t
  WHERE t.rn > 1
);

-- 4.3 อัปเดตยอดรวม waste_qty และ total_qty ของรายงานหลักให้ถูกต้องตรงกับปัญหาย่อย
UPDATE daily_waste_reports r
SET 
  waste_qty = sub.total_waste,
  waste_weight_kg = sub.total_waste
FROM (
  SELECT report_id, SUM(waste_weight_kg) AS total_waste
  FROM daily_waste_report_items
  GROUP BY report_id
) sub
WHERE r.id = sub.report_id
  AND r.department_code = 'SHADE_NET';

-- 4.4 ลบรายงานที่ซ้ำซ้อนในตาราง daily_waste_reports (เก็บเฉพาะรายงานที่ดีที่สุดไว้ 1 รายการต่อ วัน+เครื่อง+กะ)
DELETE FROM daily_waste_reports
WHERE id IN (
  SELECT dup_id FROM (
    SELECT 
      id AS dup_id,
      ROW_NUMBER() OVER (
        PARTITION BY report_date, department_code, machine_no, shift
        ORDER BY 
          COALESCE(total_qty, 0) DESC,
          COALESCE(waste_qty, 0) DESC,
          created_at DESC
      ) AS rn
    FROM daily_waste_reports
    WHERE department_code = 'SHADE_NET'
  ) t
  WHERE t.rn > 1
);

-- -----------------------------------------------------------------------------
-- 5. จัดการ Master Data: ปิดการใช้งาน SLAN / SHADING_NET และลงทะเบียน 18 เครื่องใน master_machines
-- -----------------------------------------------------------------------------

-- ปิดการแสดงผลรหัสเก่าที่ซ้ำซ้อนในตัวเลือก dropdown
UPDATE master_departments
SET is_active = false
WHERE department_code IN ('SLAN', 'SHADING_NET');

-- ลงทะเบียนเครื่องจักร 18 เครื่องของแผนกสแลนในตาราง master_machines
INSERT INTO master_machines (machine_no, department, is_active, sort_order)
VALUES 
  ('เครื่อง 1', 'SHADE_NET', true, 1),
  ('เครื่อง 2', 'SHADE_NET', true, 2),
  ('เครื่อง 3', 'SHADE_NET', true, 3),
  ('เครื่อง 4', 'SHADE_NET', true, 4),
  ('เครื่อง 5', 'SHADE_NET', true, 5),
  ('เครื่อง 6', 'SHADE_NET', true, 6),
  ('เครื่อง 7', 'SHADE_NET', true, 7),
  ('เครื่อง 8', 'SHADE_NET', true, 8),
  ('เครื่อง 9', 'SHADE_NET', true, 9),
  ('เครื่อง 10', 'SHADE_NET', true, 10),
  ('เครื่อง 11', 'SHADE_NET', true, 11),
  ('เครื่อง 12', 'SHADE_NET', true, 12),
  ('เครื่อง 13', 'SHADE_NET', true, 13),
  ('เครื่อง 14', 'SHADE_NET', true, 14),
  ('เครื่อง 15', 'SHADE_NET', true, 15),
  ('เครื่อง 16', 'SHADE_NET', true, 16),
  ('เครื่อง 17', 'SHADE_NET', true, 17),
  ('เครื่อง 18', 'SHADE_NET', true, 18)
ON CONFLICT DO NOTHING;

COMMIT;

-- -----------------------------------------------------------------------------
-- 6. ตรวจสอบผลลัพธ์หลังรวมข้อมูล (รันเพื่อดูสรุปผลของแผนกสแลน)
-- -----------------------------------------------------------------------------
SELECT 
  machine_no AS "เครื่องจักร",
  COUNT(*) AS "จำนวนรายงาน",
  ROUND(SUM(COALESCE(total_qty, 0))::numeric, 2) AS "น้ำหนักผลิตรวม (kg)",
  ROUND(SUM(COALESCE(waste_qty, 0))::numeric, 2) AS "น้ำหนักสูญเสียรวม (kg)",
  CASE 
    WHEN SUM(COALESCE(total_qty, 0)) > 0 
    THEN ROUND((SUM(COALESCE(waste_qty, 0)) / SUM(COALESCE(total_qty, 0)) * 100)::numeric, 2)
    ELSE 0 
  END AS "% Waste"
FROM daily_waste_reports
WHERE department_code = 'SHADE_NET'
  AND report_date >= '2026-08-01' AND report_date <= '2026-08-31'
GROUP BY machine_no
ORDER BY (regexp_match(machine_no, '(\d+)'))[1]::integer ASC;
