-- =============================================================================
-- SQL Script: นำเข้าข้อมูลเดือนสิงหาคม 2026 (ส่วนที่ 1: เครื่อง 10, 11, 12)
-- ปรับปรุงโครงสร้างคอลัมน์ให้ตรงกับฐานข้อมูล Supabase (ตาราง daily_waste_reports)
-- รวมทั้งสิ้น 63 รายการ
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

END $$;
