-- =============================================================================
-- SQL Script: นำเข้าข้อมูลเดือนสิงหาคม 2026 ครบทุกเครื่อง (เครื่อง 10, 11, 12, 13, 14, 15, 16, 17)
-- ปรับปรุงโครงสร้างคอลัมน์ให้ตรงกับฐานข้อมูล Supabase (ตาราง daily_waste_reports)
-- รวมทั้งสิ้น 142 รายการ
-- =============================================================================

-- 1. ตรวจสอบให้แน่ใจว่ามีรหัสแผนกในตาราง master_departments เพื่อป้องกัน Foreign Key Error
INSERT INTO master_departments (department_code, department_name)
VALUES ('DRILL', 'เจาะ')
ON CONFLICT (department_code) DO NOTHING;

DO $$ 
DECLARE
  r_id UUID;
BEGIN

  -- วันที่ 2026-08-01 | เครื่อง 12 | เสีย 5.40 kg | ผลิต 203.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-01',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    203.10,
    197.70,
    5.40,
    5.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-01 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.60, NULL),
    (r_id, 2, 'ขี้สแลน', 0.80, NULL);

  -- วันที่ 2026-08-03 | เครื่อง 12 | เสีย 9.40 kg | ผลิต 320.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-03',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    320.00,
    310.60,
    9.40,
    9.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-03 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 9.40, NULL);

  -- วันที่ 2026-08-04 | เครื่อง 12 | เสีย 18.70 kg | ผลิต 339.20 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-04',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    339.20,
    320.50,
    18.70,
    18.70,
    'kg',
    'รายงานของเสีย',
    'ม้วนขาด',
    'accounting_checked',
    '2026-08-04 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'ม้วนขาด', 8.60, NULL),
    (r_id, 2, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 10.10, NULL);

  -- วันที่ 2026-08-05 | เครื่อง 12 | เสีย 8.80 kg | ผลิต 174.50 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-05',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    174.50,
    165.70,
    8.80,
    8.80,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-05 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.90, NULL),
    (r_id, 2, 'ขี้สแลน', 1.10, NULL),
    (r_id, 3, 'อื่นๆ', 2.80, 'เศษรอยตัดขอบขาดบ่อย');

  -- วันที่ 2026-08-06 | เครื่อง 12 | เสีย 8.50 kg | ผลิต 339.40 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-06',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    339.40,
    330.90,
    8.50,
    8.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-06 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.50, NULL);

  -- วันที่ 2026-08-07 | เครื่อง 12 | เสีย 8.80 kg | ผลิต 334.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-07',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    334.00,
    325.20,
    8.80,
    8.80,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-07 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.80, NULL);

  -- วันที่ 2026-08-08 | เครื่อง 12 | เสีย 22.10 kg | ผลิต 316.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-08',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    316.80,
    294.70,
    22.10,
    22.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-08 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.60, NULL),
    (r_id, 2, 'ม้วนขาด', 13.50, NULL);

  -- วันที่ 2026-08-11 | เครื่อง 12 | เสีย 14.10 kg | ผลิต 82.20 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-11',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    82.20,
    68.10,
    14.10,
    14.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)',
    'accounting_checked',
    '2026-08-11 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 9.80, NULL),
    (r_id, 2, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 2.50, NULL),
    (r_id, 3, 'อื่นๆ', 1.80, 'เศษรอยตัดขอบขาดบ่อย');

  -- วันที่ 2026-08-12 | เครื่อง 12 | เสีย 3.10 kg | ผลิต 112.40 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-12',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า',
    'เช้า',
    112.40,
    109.30,
    3.10,
    3.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-12 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 3.10, NULL);

  -- วันที่ 2026-08-13 | เครื่อง 12 | เสีย 3.90 kg | ผลิต 112.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-13',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า',
    'เช้า',
    112.10,
    108.20,
    3.90,
    3.90,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-13 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 3.90, NULL);

  -- วันที่ 2026-08-14 | เครื่อง 12 | เสีย 13.40 kg | ผลิต 88.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-14',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า',
    'เช้า',
    88.00,
    74.60,
    13.40,
    13.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-14 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 3.00, NULL),
    (r_id, 2, 'ม้วนขาด', 10.40, NULL);

  -- วันที่ 2026-08-18 | เครื่อง 12 | เสีย 19.90 kg | ผลิต 183.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-18',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    183.00,
    163.10,
    19.90,
    19.90,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-18 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.80, NULL),
    (r_id, 2, 'ขี้สแลน', 2.20, NULL),
    (r_id, 3, 'ม้วนขาด', 11.90, NULL);

  -- วันที่ 2026-08-19 | เครื่อง 12 | เสีย 5.30 kg | ผลิต 184.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-19',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    184.00,
    178.70,
    5.30,
    5.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-19 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.30, NULL);

  -- วันที่ 2026-08-20 | เครื่อง 12 | เสีย 8.60 kg | ผลิต 226.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-20',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    226.30,
    217.70,
    8.60,
    8.60,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-20 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.60, NULL),
    (r_id, 2, 'ตัดเสีย', 3.00, 'ตัดออก2ท่อนสาเหตุเพราะเครื่องกระตุกขาดบ่อย');

  -- วันที่ 2026-08-21 | เครื่อง 12 | เสีย 5.30 kg | ผลิต 208.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-21',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    208.10,
    202.80,
    5.30,
    5.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-21 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.30, NULL);

  -- วันที่ 2026-08-22 | เครื่อง 12 | เสีย 23.30 kg | ผลิต 186.70 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-22',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    186.70,
    163.40,
    23.30,
    23.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)',
    'accounting_checked',
    '2026-08-22 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 16.20, NULL),
    (r_id, 2, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.50, NULL),
    (r_id, 3, 'ขี้สแลน', 1.60, NULL);

  -- วันที่ 2026-08-24 | เครื่อง 12 | เสีย 27.10 kg | ผลิต 330.20 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-24',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    330.20,
    303.10,
    27.10,
    27.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-24 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.90, NULL),
    (r_id, 2, 'ม้วนขาด', 2.50, NULL),
    (r_id, 3, 'อื่นๆ', 15.70, 'เศษรอยตัดขอบ+ม้วนด้าย45ขาด20ม.สาเหตุม้วนด้ายพันกัน');

  -- วันที่ 2026-08-25 | เครื่อง 12 | เสีย 21.60 kg | ผลิต 365.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-25',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    365.80,
    344.20,
    21.60,
    21.60,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-25 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 9.00, NULL),
    (r_id, 2, 'ม้วนขาด', 12.60, NULL);

  -- วันที่ 2026-08-26 | เครื่อง 12 | เสีย 31.90 kg | ผลิต 318.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-26',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    318.00,
    286.10,
    31.90,
    31.90,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-26 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.90, NULL),
    (r_id, 2, 'ขี้สแลน', 1.20, NULL),
    (r_id, 3, 'ม้วนขาด', 21.80, NULL);

  -- วันที่ 2026-08-27 | เครื่อง 12 | เสีย 25.50 kg | ผลิต 352.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-27',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า/ดึก',
    'เช้า/ดึก',
    352.30,
    326.80,
    25.50,
    25.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)',
    'accounting_checked',
    '2026-08-27 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 6.60, NULL),
    (r_id, 2, 'อื่นๆ', 18.90, 'ตัดออก2ท่อน75ม. เนื่องจากด้ายรวมกันออก');

  -- วันที่ 2026-08-28 | เครื่อง 12 | เสีย 16.90 kg | ผลิต 140.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-28',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'ดึก',
    'ดึก',
    140.00,
    123.10,
    16.90,
    16.90,
    'kg',
    'รายงานของเสีย',
    'ม้วนขาด',
    'accounting_checked',
    '2026-08-28 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'ม้วนขาด', 12.80, NULL),
    (r_id, 2, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.10, NULL);

  -- วันที่ 2026-08-29 | เครื่อง 12 | เสีย 5.00 kg | ผลิต 123.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-29',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'ดึก',
    'ดึก',
    123.80,
    118.80,
    5.00,
    5.00,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-29 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 2.70, NULL),
    (r_id, 2, 'ขี้สแลน', 2.30, NULL);

  -- วันที่ 2026-08-31 | เครื่อง 12 | เสีย 2.30 kg | ผลิต 70.40 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-31',
    'DRILL',
    'DRILL',
    'เครื่อง 12',
    'เช้า',
    'เช้า',
    70.40,
    68.10,
    2.30,
    2.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-31 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 2.30, NULL);

  -- วันที่ 2026-08-01 | เครื่อง 11 | เสีย 5.40 kg | ผลิต 203.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-01',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    203.10,
    197.70,
    5.40,
    5.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-01 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.60, NULL),
    (r_id, 2, 'ขี้สแลน', 0.80, NULL);

  -- วันที่ 2026-08-03 | เครื่อง 11 | เสีย 4.60 kg | ผลิต 181.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-03',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    181.30,
    176.70,
    4.60,
    4.60,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-03 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.60, NULL);

  -- วันที่ 2026-08-07 | เครื่อง 11 | เสีย 38.20 kg | ผลิต 150.70 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-07',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'ดึก',
    'ดึก',
    150.70,
    112.50,
    38.20,
    38.20,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-07 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 6.30, NULL),
    (r_id, 2, 'น้ำหนักของเสียรวม', 31.90, NULL);

  -- วันที่ 2026-08-11 | เครื่อง 11 | เสีย 7.30 kg | ผลิต 225.40 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-11',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    225.40,
    218.10,
    7.30,
    7.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-11 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 7.30, NULL);

  -- วันที่ 2026-08-12 | เครื่อง 11 | เสีย 30.10 kg | ผลิต 193.60 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-12',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    193.60,
    163.50,
    30.10,
    30.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-12 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.90, NULL),
    (r_id, 2, 'ม้วนขาด', 12.90, NULL),
    (r_id, 3, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 7.80, NULL),
    (r_id, 4, 'ขี้สแลน', 3.50, NULL);

  -- วันที่ 2026-08-13 | เครื่อง 11 | เสีย 7.50 kg | ผลิต 229.70 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-13',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    229.70,
    222.20,
    7.50,
    7.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-13 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 7.50, NULL);

  -- วันที่ 2026-08-14 | เครื่อง 11 | เสีย 20.30 kg | ผลิต 201.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-14',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    201.30,
    181.00,
    20.30,
    20.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-14 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 7.40, NULL),
    (r_id, 2, 'ม้วนขาด', 12.90, NULL);

  -- วันที่ 2026-08-15 | เครื่อง 11 | เสีย 16.00 kg | ผลิต 204.70 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-15',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    204.70,
    188.70,
    16.00,
    16.00,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-15 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.00, NULL),
    (r_id, 2, 'ม้วนขาด', 6.20, NULL),
    (r_id, 3, 'ขี้สแลน', 1.80, NULL);

  -- วันที่ 2026-08-20 | เครื่อง 11 | เสีย 24.70 kg | ผลิต 157.50 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-20',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    157.50,
    132.80,
    24.70,
    24.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-20 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.50, NULL),
    (r_id, 2, 'อื่นๆ', 19.20, 'เศษรอยตัด1เมตร +ตัดออก20ม.สาเหตุรอยตัดฉีกขาด');

  -- วันที่ 2026-08-21 | เครื่อง 11 | เสีย 30.10 kg | ผลิต 146.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-21',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    146.10,
    116.00,
    30.10,
    30.10,
    'kg',
    'รายงานของเสีย',
    'ม้วนขาดด้าย',
    'accounting_checked',
    '2026-08-21 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'ม้วนขาดด้าย', 5.20, NULL),
    (r_id, 2, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 15.00, NULL),
    (r_id, 3, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.70, NULL),
    (r_id, 4, 'ของเสียตอนเปลี่ยนม้วนกระดาษ', 0.50, NULL),
    (r_id, 5, 'ตัดเสีย', 4.70, 'ตัดออกสาเหตุด้ายเปลี่ยนสี+ตัดออกสาเหตุด้ายแตก');

  -- วันที่ 2026-08-22 | เครื่อง 11 | เสีย 4.90 kg | ผลิต 218.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-22',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    218.30,
    213.40,
    4.90,
    4.90,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-22 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.90, NULL);

  -- วันที่ 2026-08-24 | เครื่อง 11 | เสีย 28.70 kg | ผลิต 238.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-24',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    238.80,
    210.10,
    28.70,
    28.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-24 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 3.40, NULL),
    (r_id, 2, 'ตัดเสีย', 25.30, 'รอยตัดสาเหตุด้ายใหญ่');

  -- วันที่ 2026-08-25 | เครื่อง 11 | เสีย 7.20 kg | ผลิต 222.20 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-25',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    222.20,
    215.00,
    7.20,
    7.20,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-25 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 7.20, NULL);

  -- วันที่ 2026-08-26 | เครื่อง 11 | เสีย 10.40 kg | ผลิต 316.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-26',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    316.30,
    305.90,
    10.40,
    10.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-26 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.10, NULL),
    (r_id, 2, 'เศษเปลี่ยนม้วนด้าย', 2.30, NULL);

  -- วันที่ 2026-08-27 | เครื่อง 11 | เสีย 34.50 kg | ผลิต 263.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-27',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    263.80,
    229.30,
    34.50,
    34.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-27 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 7.80, NULL),
    (r_id, 2, 'ขี้สแลน', 1.80, NULL),
    (r_id, 3, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 7.90, NULL),
    (r_id, 4, 'เศษเปลี่ยนม้วนด้าย', 1.30, NULL),
    (r_id, 5, 'อื่นๆ', 15.70, 'ด้ายใหญ่ตอนเปลี่ยนม้วน+ด้ายตกเกลียว');

  -- วันที่ 2026-08-28 | เครื่อง 11 | เสีย 30.00 kg | ผลิต 331.50 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-28',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    331.50,
    301.50,
    30.00,
    30.00,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-28 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 9.20, NULL),
    (r_id, 2, 'ม้วนขาด', 5.80, NULL),
    (r_id, 3, 'อื่นๆ', 15.00, 'ม้วนขาด+รอยตัด');

  -- วันที่ 2026-08-29 | เครื่อง 11 | เสีย 9.90 kg | ผลิต 377.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-29',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า/ดึก',
    'เช้า/ดึก',
    377.10,
    367.20,
    9.90,
    9.90,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-29 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.90, NULL),
    (r_id, 2, 'น้ำหนักของเสีย', 1.00, NULL);

  -- วันที่ 2026-08-31 | เครื่อง 11 | เสีย 3.90 kg | ผลิต 85.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-31',
    'DRILL',
    'DRILL',
    'เครื่อง 11',
    'เช้า',
    'เช้า',
    85.00,
    81.10,
    3.90,
    3.90,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-31 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 2.10, NULL),
    (r_id, 2, 'ขี้สแลน', 1.80, NULL);

  -- วันที่ 2026-08-01 | เครื่อง 10 | เสีย 8.00 kg | ผลิต 245.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-01',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    245.00,
    237.00,
    8.00,
    8.00,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-01 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.00, NULL);

  -- วันที่ 2026-08-03 | เครื่อง 10 | เสีย 6.90 kg | ผลิต 138.60 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-03',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    138.60,
    131.70,
    6.90,
    6.90,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-03 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.30, NULL),
    (r_id, 2, 'ขี้สแลน', 1.60, NULL);

  -- วันที่ 2026-08-04 | เครื่อง 10 | เสีย 3.80 kg | ผลิต 138.60 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-04',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า',
    'เช้า',
    138.60,
    134.80,
    3.80,
    3.80,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-04 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 3.80, NULL);

  -- วันที่ 2026-08-05 | เครื่อง 10 | เสีย 2.10 kg | ผลิต 68.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-05',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า',
    'เช้า',
    68.80,
    66.70,
    2.10,
    2.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-05 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 2.10, NULL);

  -- วันที่ 2026-08-06 | เครื่อง 10 | เสีย 4.20 kg | ผลิต 138.40 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-06',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า',
    'เช้า',
    138.40,
    134.20,
    4.20,
    4.20,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-06 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.20, NULL);

  -- วันที่ 2026-08-07 | เครื่อง 10 | เสีย 3.70 kg | ผลิต 138.20 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-07',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'ดึก',
    'ดึก',
    138.20,
    134.50,
    3.70,
    3.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-07 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 3.70, NULL);

  -- วันที่ 2026-08-08 | เครื่อง 10 | เสีย 13.00 kg | ผลิต 357.90 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-08',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    357.90,
    344.90,
    13.00,
    13.00,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-08 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 11.80, NULL),
    (r_id, 2, 'ขี้สแลน', 1.20, NULL);

  -- วันที่ 2026-08-11 | เครื่อง 10 | เสีย 9.70 kg | ผลิต 250.20 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-11',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    250.20,
    240.50,
    9.70,
    9.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-11 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 9.70, NULL);

  -- วันที่ 2026-08-12 | เครื่อง 10 | เสีย 7.30 kg | ผลิต 248.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-12',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    248.10,
    240.80,
    7.30,
    7.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-12 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 7.30, NULL);

  -- วันที่ 2026-08-13 | เครื่อง 10 | เสีย 9.50 kg | ผลิต 240.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-13',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    240.30,
    230.80,
    9.50,
    9.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-13 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.90, NULL),
    (r_id, 2, 'ขี้สแลน', 0.60, NULL);

  -- วันที่ 2026-08-14 | เครื่อง 10 | เสีย 10.20 kg | ผลิต 275.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-14',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    275.30,
    265.10,
    10.20,
    10.20,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-14 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 10.20, NULL);

  -- วันที่ 2026-08-15 | เครื่อง 10 | เสีย 38.00 kg | ผลิต 183.90 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-15',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    183.90,
    145.90,
    38.00,
    38.00,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-15 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 6.20, NULL),
    (r_id, 2, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 31.80, NULL);

  -- วันที่ 2026-08-20 | เครื่อง 10 | เสีย 8.60 kg | ผลิต 240.70 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-20',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า',
    'เช้า',
    240.70,
    232.10,
    8.60,
    8.60,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-20 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.80, NULL),
    (r_id, 2, 'อื่นๆ', 3.80, 'เศษรอยตัดเนื่องจากสีตกเครื่อง');

  -- วันที่ 2026-08-21 | เครื่อง 10 | เสีย 7.70 kg | ผลิต 240.20 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-21',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    240.20,
    232.50,
    7.70,
    7.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-21 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 6.50, NULL),
    (r_id, 2, 'ขี้สแลน', 1.20, NULL);

  -- วันที่ 2026-08-22 | เครื่อง 10 | เสีย 4.10 kg | ผลิต 119.90 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-22',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า',
    'เช้า',
    119.90,
    115.80,
    4.10,
    4.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-22 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.10, NULL);

  -- วันที่ 2026-08-24 | เครื่อง 10 | เสีย 14.90 kg | ผลิต 385.70 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-24',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    385.70,
    370.80,
    14.90,
    14.90,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-24 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 14.90, NULL);

  -- วันที่ 2026-08-25 | เครื่อง 10 | เสีย 37.00 kg | ผลิต 383.20 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-25',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    383.20,
    346.20,
    37.00,
    37.00,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-25 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 12.80, NULL),
    (r_id, 2, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 16.70, NULL),
    (r_id, 3, 'อื่นๆ', 7.50, 'รอยตัดด้ายแตก+น้ำหนักผลิตภัณฑ์');

  -- วันที่ 2026-08-26 | เครื่อง 10 | เสีย 18.90 kg | ผลิต 385.50 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-26',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    385.50,
    366.60,
    18.90,
    18.90,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-26 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 11.00, NULL),
    (r_id, 2, 'อื่นๆ', 7.90, 'รอยตัด');

  -- วันที่ 2026-08-27 | เครื่อง 10 | เสีย 62.20 kg | ผลิต 322.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-27',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    322.80,
    260.60,
    62.20,
    62.20,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-27 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 13.00, NULL),
    (r_id, 2, 'ขี้สแลน', 1.30, NULL),
    (r_id, 3, 'ม้วนขาด', 24.90, NULL),
    (r_id, 4, 'ม้วนขาดด้าย', 12.10, NULL),
    (r_id, 5, 'อื่นๆ', 10.90, 'ตัดออก45ม.สาเหตุขาด2ข้างเลย');

  -- วันที่ 2026-08-28 | เครื่อง 10 | เสีย 30.40 kg | ผลิต 386.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-28',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    386.30,
    355.90,
    30.40,
    30.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-28 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 12.70, NULL),
    (r_id, 2, 'ม้วนขาด', 1.90, NULL),
    (r_id, 3, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 15.80, NULL);

  -- วันที่ 2026-08-29 | เครื่อง 10 | เสีย 12.10 kg | ผลิต 384.90 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-29',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า/ดึก',
    'เช้า/ดึก',
    384.90,
    372.80,
    12.10,
    12.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-29 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 10.90, NULL),
    (r_id, 2, 'ขี้สแลน', 1.20, NULL);

  -- วันที่ 2026-08-31 | เครื่อง 10 | เสีย 2.10 kg | ผลิต 85.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-31',
    'DRILL',
    'DRILL',
    'เครื่อง 10',
    'เช้า',
    'เช้า',
    85.80,
    83.70,
    2.10,
    2.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-31 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 2.10, NULL);

  -- วันที่ 2026-08-01 | เครื่อง 15 | เสีย 8.70 kg | ผลิต 243.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-01',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    243.10,
    234.40,
    8.70,
    8.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-01 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.70, NULL);

  -- วันที่ 2026-08-03 | เครื่อง 15 | เสีย 12.40 kg | ผลิต 241.60 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-03',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    241.60,
    229.20,
    12.40,
    12.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-03 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 10.90, NULL),
    (r_id, 2, 'ของเสียรวมปั๊ม', 1.50, NULL);

  -- วันที่ 2026-08-04 | เครื่อง 15 | เสีย 15.50 kg | ผลิต 347.40 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-04',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    347.40,
    331.90,
    15.50,
    15.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-04 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 14.00, NULL),
    (r_id, 2, 'ของเสีย', 1.50, NULL);

  -- วันที่ 2026-08-05 | เครื่อง 15 | เสีย 18.70 kg | ผลิต 324.50 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-05',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    324.50,
    305.80,
    18.70,
    18.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-05 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 11.70, NULL),
    (r_id, 2, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 4.70, NULL),
    (r_id, 3, 'ของเสียรวมปั๊ม', 2.30, NULL);

  -- วันที่ 2026-08-06 | เครื่อง 15 | เสีย 12.50 kg | ผลิต 424.20 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-06',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    424.20,
    411.70,
    12.50,
    12.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-06 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 12.50, NULL);

  -- วันที่ 2026-08-07 | เครื่อง 15 | เสีย 15.20 kg | ผลิต 346.20 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-07',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    346.20,
    331.00,
    15.20,
    15.20,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-07 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 14.00, NULL),
    (r_id, 2, 'ของเสียรวมปั๊ม', 1.20, NULL);

  -- วันที่ 2026-08-08 | เครื่อง 15 | เสีย 12.70 kg | ผลิต 430.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-08',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    430.10,
    417.40,
    12.70,
    12.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-08 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 12.70, NULL);

  -- วันที่ 2026-08-11 | เครื่อง 15 | เสีย 19.40 kg | ผลิต 168.70 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-11',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    168.70,
    149.30,
    19.40,
    19.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-11 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.90, NULL),
    (r_id, 2, 'ม้วนขาด', 10.50, NULL);

  -- วันที่ 2026-08-12 | เครื่อง 15 | เสีย 28.90 kg | ผลิต 169.90 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-12',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    169.90,
    141.00,
    28.90,
    28.90,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-12 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 7.70, NULL),
    (r_id, 2, 'ม้วนขาด', 10.40, NULL),
    (r_id, 3, 'อื่นๆ', 10.80, 'ขอบไม่เรียบ');

  -- วันที่ 2026-08-13 | เครื่อง 15 | เสีย 14.00 kg | ผลิต 243.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-13',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    243.30,
    229.30,
    14.00,
    14.00,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-13 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 9.40, NULL),
    (r_id, 2, 'ม้วนขาด', 4.60, NULL);

  -- วันที่ 2026-08-14 | เครื่อง 15 | เสีย 10.20 kg | ผลิต 97.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-14',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    97.00,
    86.80,
    10.20,
    10.20,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-14 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 3.90, NULL),
    (r_id, 2, 'ตัดเสีย', 6.30, 'ตัดออก23ม.เนื่องจากสีของงานเปลี่ยน');

  -- วันที่ 2026-08-15 | เครื่อง 15 | เสีย 4.40 kg | ผลิต 121.50 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-15',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    121.50,
    117.10,
    4.40,
    4.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-15 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.40, NULL);

  -- วันที่ 2026-08-18 | เครื่อง 15 | เสีย 8.90 kg | ผลิต 173.40 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-18',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    173.40,
    164.50,
    8.90,
    8.90,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-18 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.90, NULL);

  -- วันที่ 2026-08-19 | เครื่อง 15 | เสีย 22.30 kg | ผลิต 273.40 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-19',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    273.40,
    251.10,
    22.30,
    22.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-19 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.80, NULL),
    (r_id, 2, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 12.20, NULL),
    (r_id, 3, 'ของเสียรวมปั๊ม', 1.30, NULL);

  -- วันที่ 2026-08-20 | เครื่อง 15 | เสีย 4.70 kg | ผลิต 124.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-20',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า',
    'เช้า',
    124.10,
    119.40,
    4.70,
    4.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-20 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.70, NULL);

  -- วันที่ 2026-08-21 | เครื่อง 15 | เสีย 9.70 kg | ผลิต 123.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-21',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า',
    'เช้า',
    123.10,
    113.40,
    9.70,
    9.70,
    'kg',
    'รายงานของเสีย',
    'ของเสีย',
    'accounting_checked',
    '2026-08-21 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'ของเสีย', 4.70, NULL),
    (r_id, 2, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.00, NULL);

  -- วันที่ 2026-08-22 | เครื่อง 15 | เสีย 33.30 kg | ผลิต 208.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-22',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    208.10,
    174.80,
    33.30,
    33.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-22 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 10.40, NULL),
    (r_id, 2, 'ม้วนขาด', 10.50, NULL),
    (r_id, 3, 'ตัดเสีย', 12.40, 'ตัดออก50 ม. เนื่องจากรอยตัดฉีกขาดง่าย');

  -- วันที่ 2026-08-24 | เครื่อง 15 | เสีย 17.40 kg | ผลิต 362.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-24',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    362.10,
    344.70,
    17.40,
    17.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-24 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 15.50, NULL),
    (r_id, 2, 'ของเสียรวมปั๊ม', 1.90, NULL);

  -- วันที่ 2026-08-25 | เครื่อง 15 | เสีย 32.70 kg | ผลิต 369.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-25',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    369.80,
    337.10,
    32.70,
    32.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-25 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 15.00, NULL),
    (r_id, 2, 'ตัดเสีย', 17.70, 'ตัดออก30ม.เนื่องจากสีตก+ตัดออก98ม.เนื่องจากมีรอยขาดช่วงกลาง');

  -- วันที่ 2026-08-26 | เครื่อง 15 | เสีย 19.20 kg | ผลิต 335.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-26',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    335.80,
    316.60,
    19.20,
    19.20,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-26 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 12.80, NULL),
    (r_id, 2, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 5.30, NULL),
    (r_id, 3, 'ของเสียรวมปั๊ม', 1.10, NULL);

  -- วันที่ 2026-08-27 | เครื่อง 15 | เสีย 26.40 kg | ผลิต 379.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-27',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    379.00,
    352.60,
    26.40,
    26.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-27 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 13.30, NULL),
    (r_id, 2, 'อื่นๆ', 13.10, 'ขอบไม่เรียบตัดออก89ม.');

  -- วันที่ 2026-08-28 | เครื่อง 15 | เสีย 24.30 kg | ผลิต 127.60 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-28',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    127.60,
    103.30,
    24.30,
    24.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-28 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 11.00, NULL),
    (r_id, 2, 'ของเสียรวมปั๊ม', 2.20, NULL),
    (r_id, 3, 'ม้วนขาด', 11.10, NULL);

  -- วันที่ 2026-08-29 | เครื่อง 15 | เสีย 8.20 kg | ผลิต 203.90 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-29',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    203.90,
    195.70,
    8.20,
    8.20,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-29 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.20, NULL);

  -- วันที่ 2026-08-31 | เครื่อง 15 | เสีย 10.80 kg | ผลิต 221.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-31',
    'DRILL',
    'DRILL',
    'เครื่อง 15',
    'เช้า/ดึก',
    'เช้า/ดึก',
    221.30,
    210.50,
    10.80,
    10.80,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-31 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 7.80, NULL),
    (r_id, 2, 'เศษด้าย(สี,ขาว,ดำ)', 3.00, NULL);

  -- วันที่ 2026-08-01 | เครื่อง 14 | เสีย 13.70 kg | ผลิต 170.50 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-01',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    170.50,
    156.80,
    13.70,
    13.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-01 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 6.60, NULL),
    (r_id, 2, 'ม้วนขาด', 4.60, NULL),
    (r_id, 3, 'อื่นๆ', 2.50, 'รอยตัด+ขี้สแลน');

  -- วันที่ 2026-08-03 | เครื่อง 14 | เสีย 27.10 kg | ผลิต 274.90 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-03',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    274.90,
    247.80,
    27.10,
    27.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)',
    'accounting_checked',
    '2026-08-03 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 8.30, NULL),
    (r_id, 2, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 9.40, NULL),
    (r_id, 3, 'ของเสียรวมปั๊ม', 1.30, NULL),
    (r_id, 4, 'ตัดเสีย', 8.10, 'ตัดออก35ม.สาเหตุขาดตรงกลางด้ายเสีย');

  -- วันที่ 2026-08-04 | เครื่อง 14 | เสีย 8.60 kg | ผลิต 330.90 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-04',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    330.90,
    322.30,
    8.60,
    8.60,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-04 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.60, NULL);

  -- วันที่ 2026-08-05 | เครื่อง 14 | เสีย 11.00 kg | ผลิต 335.90 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-05',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    335.90,
    324.90,
    11.00,
    11.00,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-05 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 9.70, NULL),
    (r_id, 2, 'ของเสียรวมปั๊ม', 1.30, NULL);

  -- วันที่ 2026-08-06 | เครื่อง 14 | เสีย 8.50 kg | ผลิต 251.60 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-06',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    251.60,
    243.10,
    8.50,
    8.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-06 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.50, NULL);

  -- วันที่ 2026-08-07 | เครื่อง 14 | เสีย 10.30 kg | ผลิต 327.90 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-07',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    327.90,
    317.60,
    10.30,
    10.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-07 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 9.40, NULL),
    (r_id, 2, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 0.90, NULL);

  -- วันที่ 2026-08-08 | เครื่อง 14 | เสีย 33.20 kg | ผลิต 313.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-08',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    313.10,
    279.90,
    33.20,
    33.20,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-08 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 10.30, NULL),
    (r_id, 2, 'ม้วนขาด', 1.40, NULL),
    (r_id, 3, 'ตัดเสีย', 21.50, 'ตัดออก86ม. ด้ายตกตะกั่ว');

  -- วันที่ 2026-08-11 | เครื่อง 14 | เสีย 7.30 kg | ผลิต 209.50 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-11',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    209.50,
    202.20,
    7.30,
    7.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-11 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 7.30, NULL);

  -- วันที่ 2026-08-12 | เครื่อง 14 | เสีย 16.60 kg | ผลิต 158.90 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-12',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    158.90,
    142.30,
    16.60,
    16.60,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-12 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 7.60, NULL),
    (r_id, 2, 'อื่นๆ', 9.00, 'เศษมีดเป็นขุย+รอยตัดสาเหตุรอยตัดฉีกขาด ตัดออก2ท่อน');

  -- วันที่ 2026-08-13 | เครื่อง 14 | เสีย 7.60 kg | ผลิต 213.50 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-13',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    213.50,
    205.90,
    7.60,
    7.60,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-13 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 7.60, NULL);

  -- วันที่ 2026-08-14 | เครื่อง 14 | เสีย 4.00 kg | ผลิต 93.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-14',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า',
    'เช้า',
    93.80,
    89.80,
    4.00,
    4.00,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-14 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 2.90, NULL),
    (r_id, 2, 'ของเสียรวมปั๊ม', 1.10, NULL);

  -- วันที่ 2026-08-15 | เครื่อง 14 | เสีย 2.60 kg | ผลิต 93.60 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-15',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า',
    'เช้า',
    93.60,
    91.00,
    2.60,
    2.60,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-15 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 2.60, NULL);

  -- วันที่ 2026-08-18 | เครื่อง 14 | เสีย 6.90 kg | ผลิต 88.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-18',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า',
    'เช้า',
    88.30,
    81.40,
    6.90,
    6.90,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)',
    'accounting_checked',
    '2026-08-18 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 3.50, NULL),
    (r_id, 2, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 1.80, NULL),
    (r_id, 3, 'อื่นๆ', 1.60, 'เศษฟิล์มแผ่นข้าง+เศษฟิล์มก้อน');

  -- วันที่ 2026-08-19 | เครื่อง 14 | เสีย 6.10 kg | ผลิต 210.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-19',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    210.00,
    203.90,
    6.10,
    6.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-19 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 6.10, NULL);

  -- วันที่ 2026-08-20 | เครื่อง 14 | เสีย 8.40 kg | ผลิต 200.70 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-20',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    200.70,
    192.30,
    8.40,
    8.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-20 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 7.20, NULL),
    (r_id, 2, 'อื่นๆ', 1.20, 'ขี้สแลนสาเหตุด้ายใหญ่');

  -- วันที่ 2026-08-21 | เครื่อง 14 | เสีย 8.80 kg | ผลิต 215.90 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-21',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    215.90,
    207.10,
    8.80,
    8.80,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-21 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 6.90, NULL),
    (r_id, 2, 'ของเสียรวมปั๊ม', 1.90, NULL);

  -- วันที่ 2026-08-22 | เครื่อง 14 | เสีย 6.90 kg | ผลิต 216.60 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-22',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    216.60,
    209.70,
    6.90,
    6.90,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-22 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 6.90, NULL);

  -- วันที่ 2026-08-24 | เครื่อง 14 | เสีย 49.40 kg | ผลิต 308.20 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-24',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    308.20,
    258.80,
    49.40,
    49.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-24 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 10.00, NULL),
    (r_id, 2, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 26.00, NULL),
    (r_id, 3, 'อื่นๆ', 13.40, 'ตัดออก25ม.เนื่องจากด้ายตกสุด+เศษฟิล์มแผ่นข้าง+เศษขี้สแลน+ขี้สแลนจากการเปลี่ยนมีด');

  -- วันที่ 2026-08-25 | เครื่อง 14 | เสีย 10.50 kg | ผลิต 327.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-25',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    327.10,
    316.60,
    10.50,
    10.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-25 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 9.10, NULL),
    (r_id, 2, 'ของเสียรวมปั๊ม', 1.40, NULL);

  -- วันที่ 2026-08-26 | เครื่อง 14 | เสีย 11.30 kg | ผลิต 348.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-26',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    348.00,
    336.70,
    11.30,
    11.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-26 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 11.30, NULL);

  -- วันที่ 2026-08-27 | เครื่อง 14 | เสีย 13.10 kg | ผลิต 357.40 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-27',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    357.40,
    344.30,
    13.10,
    13.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-27 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 11.30, NULL),
    (r_id, 2, 'ของเสียรวมปั๊ม', 1.80, NULL);

  -- วันที่ 2026-08-28 | เครื่อง 14 | เสีย 5.40 kg | ผลิต 149.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-28',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    149.80,
    144.40,
    5.40,
    5.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-28 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.40, NULL);

  -- วันที่ 2026-08-29 | เครื่อง 14 | เสีย 25.40 kg | ผลิต 150.40 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-29',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    150.40,
    125.00,
    25.40,
    25.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)',
    'accounting_checked',
    '2026-08-29 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 18.50, NULL),
    (r_id, 2, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.90, NULL),
    (r_id, 3, 'อื่นๆ', 2.00, 'เศษฟิล์มแผ่นข้าง+เศษฟิล์มก้อน');

  -- วันที่ 2026-08-31 | เครื่อง 14 | เสีย 8.00 kg | ผลิต 209.70 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-31',
    'DRILL',
    'DRILL',
    'เครื่อง 14',
    'เช้า/ดึก',
    'เช้า/ดึก',
    209.70,
    201.70,
    8.00,
    8.00,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-31 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.00, NULL);

  -- วันที่ 2026-08-01 | เครื่อง 13 | เสีย 18.90 kg | ผลิต 215.60 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-01',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    215.60,
    196.70,
    18.90,
    18.90,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-01 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 6.40, NULL),
    (r_id, 2, 'ม้วนขาด', 12.50, NULL);

  -- วันที่ 2026-08-03 | เครื่อง 13 | เสีย 42.70 kg | ผลิต 237.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-03',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    237.00,
    194.30,
    42.70,
    42.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักของเสียรวม',
    'accounting_checked',
    '2026-08-03 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักของเสียรวม', 32.40, NULL),
    (r_id, 2, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 9.30, NULL),
    (r_id, 3, 'ของเสียรวมปั๊ม', 1.00, NULL);

  -- วันที่ 2026-08-04 | เครื่อง 13 | เสีย 19.10 kg | ผลิต 269.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-04',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    269.00,
    249.90,
    19.10,
    19.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)',
    'accounting_checked',
    '2026-08-04 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 11.50, NULL),
    (r_id, 2, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 7.60, NULL);

  -- วันที่ 2026-08-05 | เครื่อง 13 | เสีย 8.50 kg | ผลิต 272.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-05',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    272.10,
    263.60,
    8.50,
    8.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-05 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.50, NULL);

  -- วันที่ 2026-08-06 | เครื่อง 13 | เสีย 19.70 kg | ผลิต 342.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-06',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    342.00,
    322.30,
    19.70,
    19.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-06 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 10.90, NULL),
    (r_id, 2, 'ม้วนขาด', 4.80, NULL),
    (r_id, 3, 'ของเสียรวมปั๊ม', 4.00, NULL);

  -- วันที่ 2026-08-07 | เครื่อง 13 | เสีย 10.60 kg | ผลิต 364.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-07',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    364.80,
    354.20,
    10.60,
    10.60,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-07 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 10.60, NULL);

  -- วันที่ 2026-08-08 | เครื่อง 13 | เสีย 61.50 kg | ผลิต 268.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-08',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    268.80,
    207.30,
    61.50,
    61.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-08 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 8.70, NULL),
    (r_id, 2, 'ม้วนขาด', 13.60, NULL),
    (r_id, 3, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 4.00, NULL),
    (r_id, 4, 'ของเสีย', 3.00, NULL),
    (r_id, 5, 'น้ำหนักของเสียรวม', 32.20, NULL);

  -- วันที่ 2026-08-11 | เครื่อง 13 | เสีย 3.40 kg | ผลิต 123.20 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-11',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    123.20,
    119.80,
    3.40,
    3.40,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-11 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 3.40, NULL);

  -- วันที่ 2026-08-12 | เครื่อง 13 | เสีย 3.50 kg | ผลิต 122.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-12',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า',
    'เช้า',
    122.10,
    118.60,
    3.50,
    3.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-12 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 3.50, NULL);

  -- วันที่ 2026-08-13 | เครื่อง 13 | เสีย 17.70 kg | ผลิต 91.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-13',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า',
    'เช้า',
    91.30,
    73.60,
    17.70,
    17.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-13 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 3.40, NULL),
    (r_id, 2, 'อื่นๆ', 14.30, 'สีน้ำเงินออกไม่ได้เปลี่ยนมีดตัดออก');

  -- วันที่ 2026-08-14 | เครื่อง 13 | เสีย 5.50 kg | ผลิต 210.40 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-14',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    210.40,
    204.90,
    5.50,
    5.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-14 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.50, NULL);

  -- วันที่ 2026-08-15 | เครื่อง 13 | เสีย 13.60 kg | ผลิต 182.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-15',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    182.00,
    168.40,
    13.60,
    13.60,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-15 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.50, NULL),
    (r_id, 2, 'ตัดเสีย', 8.10, 'ด้ายหมด+ด้ายตะกั่วออก+ของเสียด้ายสีเงินขาด');

  -- วันที่ 2026-08-18 | เครื่อง 13 | เสีย 72.30 kg | ผลิต 181.60 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-18',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    181.60,
    109.30,
    72.30,
    72.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)',
    'accounting_checked',
    '2026-08-18 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 17.00, NULL),
    (r_id, 2, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 6.40, NULL),
    (r_id, 3, 'ม้วนขาด', 14.10, NULL),
    (r_id, 4, 'ของเสียรวมปั๊ม', 2.30, NULL),
    (r_id, 5, 'น้ำหนักของเสียรวม', 32.50, NULL);

  -- วันที่ 2026-08-19 | เครื่อง 13 | เสีย 5.50 kg | ผลิต 206.50 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-19',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    206.50,
    201.00,
    5.50,
    5.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-19 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.50, NULL);

  -- วันที่ 2026-08-20 | เครื่อง 13 | เสีย 6.10 kg | ผลิต 247.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-20',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    247.80,
    241.70,
    6.10,
    6.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-20 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 6.10, NULL);

  -- วันที่ 2026-08-21 | เครื่อง 13 | เสีย 5.30 kg | ผลิต 212.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-21',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    212.00,
    206.70,
    5.30,
    5.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-21 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.30, NULL);

  -- วันที่ 2026-08-22 | เครื่อง 13 | เสีย 13.60 kg | ผลิต 213.40 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-22',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    213.40,
    199.80,
    13.60,
    13.60,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-22 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 5.60, NULL),
    (r_id, 2, 'ของเสียรวมปั๊ม', 3.80, NULL),
    (r_id, 3, 'ตัดเสีย', 4.20, 'ตัดออกประมาณ18 ม.สาเหตุขอบไม่เรียบ');

  -- วันที่ 2026-08-24 | เครื่อง 13 | เสีย 10.10 kg | ผลิต 362.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-24',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    362.00,
    351.90,
    10.10,
    10.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-24 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 9.90, NULL),
    (r_id, 2, 'อื่นๆ', 0.20, 'ขี้สแลนจากการตัดเปลี่ยนมีด');

  -- วันที่ 2026-08-25 | เครื่อง 13 | เสีย 30.20 kg | ผลิต 356.10 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-25',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    356.10,
    325.90,
    30.20,
    30.20,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-25 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 10.10, NULL),
    (r_id, 2, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 20.10, NULL);

  -- วันที่ 2026-08-26 | เครื่อง 13 | เสีย 23.50 kg | ผลิต 343.40 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-26',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    343.40,
    319.90,
    23.50,
    23.50,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-26 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 9.50, NULL),
    (r_id, 2, 'ม้วนขาด', 12.90, NULL),
    (r_id, 3, 'ของเสียรวมปั๊ม', 1.10, NULL);

  -- วันที่ 2026-08-27 | เครื่อง 13 | เสีย 9.80 kg | ผลิต 382.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-27',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า/ดึก',
    'เช้า/ดึก',
    382.30,
    372.50,
    9.80,
    9.80,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-27 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 9.80, NULL);

  -- วันที่ 2026-08-28 | เครื่อง 13 | เสีย 8.20 kg | ผลิต 125.70 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-28',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'ดึก',
    'ดึก',
    125.70,
    117.50,
    8.20,
    8.20,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-28 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.00, NULL),
    (r_id, 2, 'อื่นๆ', 4.20, 'ขอบไม่เรียบ');

  -- วันที่ 2026-08-29 | เครื่อง 13 | เสีย 9.80 kg | ผลิต 140.30 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-29',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'ดึก',
    'ดึก',
    140.30,
    130.50,
    9.80,
    9.80,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)',
    'accounting_checked',
    '2026-08-29 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 5.30, NULL),
    (r_id, 2, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 3.00, NULL),
    (r_id, 3, 'ของเสียรวมปั๊ม', 1.50, NULL);

  -- วันที่ 2026-08-31 | เครื่อง 13 | เสีย 4.70 kg | ผลิต 0.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-31',
    'DRILL',
    'DRILL',
    'เครื่อง 13',
    'เช้า',
    'เช้า',
    0.00,
    0.00,
    4.70,
    4.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-31 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 4.70, NULL);

  -- วันที่ 2026-08-01 | เครื่อง 16 | เสีย 10.20 kg | ผลิต 266.20 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-01',
    'DRILL',
    'DRILL',
    'เครื่อง 16',
    'เช้า/ดึก',
    'เช้า/ดึก',
    266.20,
    256.00,
    10.20,
    10.20,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-01 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 10.20, NULL);

  -- วันที่ 2026-08-18 | เครื่อง 16 | เสีย 51.60 kg | ผลิต 225.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-18',
    'DRILL',
    'DRILL',
    'เครื่อง 16',
    'เช้า/ดึก',
    'เช้า/ดึก',
    225.00,
    173.40,
    51.60,
    51.60,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-18 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 9.30, NULL),
    (r_id, 2, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 42.30, NULL);

  -- วันที่ 2026-08-19 | เครื่อง 16 | เสีย 3.70 kg | ผลิต 0.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-19',
    'DRILL',
    'DRILL',
    'เครื่อง 16',
    'เช้า/ดึก',
    'เช้า/ดึก',
    0.00,
    0.00,
    3.70,
    3.70,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-19 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 3.70, NULL);

  -- วันที่ 2026-08-19 | เครื่อง 16 | เสีย 2.30 kg | ผลิต 117.00 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-19',
    'DRILL',
    'DRILL',
    'เครื่อง 16',
    'เช้า',
    'เช้า',
    117.00,
    114.70,
    2.30,
    2.30,
    'kg',
    'รายงานของเสีย',
    'ของเสียรวมปั๊ม',
    'accounting_checked',
    '2026-08-19 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'ของเสียรวมปั๊ม', 2.30, NULL);

  -- วันที่ 2026-08-01 | เครื่อง 17 | เสีย 5.00 kg | ผลิต 90.90 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-01',
    'DRILL',
    'DRILL',
    'เครื่อง 17',
    'เช้า',
    'เช้า',
    90.90,
    85.90,
    5.00,
    5.00,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)',
    'accounting_checked',
    '2026-08-01 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักขยะรวม(ถุง,กระดาษ,กรวย,ไม้,ฯลฯ)', 2.80, NULL),
    (r_id, 2, 'ของเสียรวมปั๊ม', 2.20, NULL);

  -- วันที่ 2026-08-18 | เครื่อง 17 | เสีย 2.30 kg | ผลิต 73.80 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-18',
    'DRILL',
    'DRILL',
    'เครื่อง 17',
    'เช้า',
    'เช้า',
    73.80,
    71.50,
    2.30,
    2.30,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-18 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 2.30, NULL);

  -- วันที่ 2026-08-19 | เครื่อง 17 | เสีย 2.10 kg | ผลิต 74.40 kg
  INSERT INTO daily_waste_reports (
    report_date,
    department_code,
    department,
    machine_no,
    shift,
    work_shift,
    total_qty,
    good_qty,
    waste_qty,
    waste_weight_kg,
    unit,
    product_name,
    problem_type,
    status,
    checked_at,
    checked_by_name,
    note
  )
  VALUES (
    '2026-08-19',
    'DRILL',
    'DRILL',
    'เครื่อง 17',
    'เช้า',
    'เช้า',
    74.40,
    72.30,
    2.10,
    2.10,
    'kg',
    'รายงานของเสีย',
    'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)',
    'accounting_checked',
    '2026-08-19 18:00:00+07',
    'accounting',
    'นำเข้าข้อมูลเดือนสิงหาคม ส่วนที่ 2'
  )
  RETURNING id INTO r_id;

  INSERT INTO daily_waste_report_items (report_id, item_no, problem_type, waste_weight_kg, detail) VALUES
    (r_id, 1, 'น้ำหนักผลิตภัณฑ์(หัว,กลาง,ตีน,ตัว,ตูด)', 2.10, NULL);

END $$;
