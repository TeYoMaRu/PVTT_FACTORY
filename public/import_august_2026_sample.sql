// SQL Script: นำเข้าข้อมูลตัวอย่างเฉพาะเดือน สิงหาคม 2569 (ส.ค. 2026) 
// เครื่อง: สแลน เบอร์ 2 (SLAN / เครื่อง 2)
// ตามไฟล์ข้อมูล Excel / CSV ของโรงงาน

/*
=============================================================================
คำแนะนำการใช้งาน:
1. นำคำสั่ง SQL ด้านล่างนี้ไปรันใน Supabase -> SQL Editor
2. ระบบจะบันทึกทั้งตารางรายงานของเสีย (daily_waste_reports), รายการปัญหาย่อย (daily_waste_report_items),
   และสถานะการตรวจสอบของบัญชี (checked / approved) ครบถ้วนทันที
=============================================================================
*/

-- บันทึกข้อมูลของเดือนสิงหาคม 2026 (2569)
DO $$
DECLARE
  r1 UUID;
  r2 UUID;
  r3 UUID;
  r4 UUID;
  r5 UUID;
  r6 UUID;
  r7 UUID;
  r8 UUID;
  r9 UUID;
  r10 UUID;
  r11 UUID;
  r12 UUID;
  r13 UUID;
  r14 UUID;
  r15 UUID;
  r16 UUID;
  r17 UUID;
  r18 UUID;
BEGIN

  -- 01-08-2026: ของเสีย 14.40 kg, ผลิต 105.60 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-01', 'SLAN', 'เครื่อง 2', 'เช้า/ดึก', 14.40, 14.40, 105.60, 105.60, 'done', 'done', '2026-08-01 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING id INTO r1;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r1, 'เศษฟิล์มรวมส่วน(บน,หน้า,ริม,ล่าง,ตู้)', 8.40, NULL),
  (r1, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 3.40, NULL),
  (r1, 'ขี้สแลน', 2.60, 'ขี้สแลนจากการต่อฟิล์มขอบม้วน');

  -- 03-08-2026: ของเสีย 40.40 kg, ผลิต 124.10 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-03', 'SLAN', 'เครื่อง 2', 'เช้า/ดึก', 40.40, 40.40, 124.10, 124.10, 'done', 'done', '2026-08-03 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r2;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r2, 'สแลนขาด', 7.10, NULL),
  (r2, 'น้ำหนักไม่ได้คุณภาพ', 26.60, NULL),
  (r2, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 5.40, NULL),
  (r2, 'สแลนปูรองม้วน', 1.30, NULL);

  -- 04-08-2026: ของเสีย 12.30 kg, ผลิต 357.00 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-04', 'SLAN', 'เครื่อง 2', 'เช้า/ดึก', 12.30, 12.30, 357.00, 357.00, 'done', 'done', '2026-08-04 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r3;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r3, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 9.10, NULL),
  (r3, 'ตัดเศษ', 3.20, 'ตัดเศษ12ม.ถอดสายพานออกสแลนวิ่งติดสายพานเศษเยอะม้วนใหญ่');

  -- 05-08-2026: ของเสีย 11.40 kg, ผลิต 339.10 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-05', 'SLAN', 'เครื่อง 2', 'เช้า/ดึก', 11.40, 11.40, 339.10, 339.10, 'done', 'done', '2026-08-05 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r4;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r4, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 9.20, NULL),
  (r4, 'สแลนปูรองม้วน', 2.20, NULL);

  -- 06-08-2026: ของเสีย 19.60 kg, ผลิต 401.40 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-06', 'SLAN', 'เครื่อง 2', 'เช้า/ดึก', 19.60, 19.60, 401.40, 401.40, 'done', 'done', '2026-08-06 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r5;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r5, 'เศษฟิล์มรวมส่วน(บน,หน้า,ริม,ล่าง,ตู้)', 7.70, NULL),
  (r5, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 11.90, NULL);

  -- 07-08-2026: ของเสีย 17.20 kg, ผลิต 362.50 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-07', 'SLAN', 'เครื่อง 2', 'เช้า/ดึก', 17.20, 17.20, 362.50, 362.50, 'done', 'done', '2026-08-07 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r6;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r6, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 12.80, NULL),
  (r6, 'ตัดเศษ', 4.40, 'สาเหตุปรับแอร์ให้พอดีกับฟิล์มฟิล์มเบียดกันเดินไม่คล่องเศษฟิล์มออกเยอะม้วนใหญ่');

  -- 08-08-2026: ของเสีย 13.60 kg, ผลิต 373.20 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-08', 'SLAN', 'เครื่อง 2', 'เช้า/ดึก', 13.60, 13.60, 373.20, 373.20, 'done', 'done', '2026-08-08 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r7;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r7, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 12.20, NULL),
  (r7, 'สแลนปูรองม้วน', 1.40, NULL);

  -- 11-08-2026: ของเสีย 7.20 kg, ผลิต 234.00 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-11', 'SLAN', 'เครื่อง 2', 'เช้า/บ่าย', 7.20, 7.20, 234.00, 234.00, 'done', 'done', '2026-08-11 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r8;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r8, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 7.20, NULL);

  -- 12-08-2026: ของเสีย 33.10 kg, ผลิต 102.60 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-12', 'SLAN', 'เครื่อง 2', 'เช้า/บ่าย', 33.10, 33.10, 102.60, 102.60, 'done', 'done', '2026-08-12 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r9;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r9, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 6.20, NULL),
  (r9, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 8.70, NULL),
  (r9, 'ขี้สแลน', 18.20, 'ตัดออก2ท่อนเมตรที่83 ร้อนตัดเส้นด้ายขาดเดินได้แปปเดียวตัดอีก');

  -- 13-08-2026: ของเสีย 5.90 kg, ผลิต 218.70 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-13', 'SLAN', 'เครื่อง 2', 'เช้า/บ่าย', 5.90, 5.90, 218.70, 218.70, 'done', 'done', '2026-08-13 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r10;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r10, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 5.90, NULL);

  -- 14-08-2026: ของเสีย 13.20 kg, ผลิต 237.30 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-14', 'SLAN', 'เครื่อง 2', 'เช้า/บ่าย', 13.20, 13.20, 237.30, 237.30, 'done', 'done', '2026-08-14 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r11;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r11, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 6.40, NULL),
  (r11, 'ขี้สแลน', 6.80, 'มีรอยตะเข็บ1ข้าง');

  -- 15-08-2026: ของเสีย 6.90 kg, ผลิต 249.60 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-15', 'SLAN', 'เครื่อง 2', 'เช้า/บ่าย', 6.90, 6.90, 249.60, 249.60, 'done', 'done', '2026-08-15 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r12;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r12, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 6.90, NULL);

  -- 22-08-2026: ของเสีย 7.30 kg, ผลิต 195.20 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-22', 'SLAN', 'เครื่อง 2', 'เช้า/บ่าย', 7.30, 7.30, 195.20, 195.20, 'done', 'done', '2026-08-22 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r13;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r13, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 5.10, NULL),
  (r13, 'สแลนปูรองม้วน', 2.20, NULL);

  -- 24-08-2026: ของเสีย 5.20 kg, ผลิต 169.20 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-24', 'SLAN', 'เครื่อง 2', 'เช้า/บ่าย', 5.20, 5.20, 169.20, 169.20, 'done', 'done', '2026-08-24 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r14;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r14, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 5.20, NULL);

  -- 25-08-2026: ของเสีย 22.10 kg, ผลิต 151.60 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-25', 'SLAN', 'เครื่อง 2', 'ดึก', 22.10, 22.10, 151.60, 151.60, 'done', 'done', '2026-08-25 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r15;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r15, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 4.00, NULL),
  (r15, 'เศษฟิล์มรวมส่วน(บน,หน้า,ริม,ล่าง,ตู้)', 16.40, NULL),
  (r15, 'ขี้สแลน', 1.70, 'ขี้สแลนจากการที่ไม่ได้เปลี่ยนมีด');

  -- 26-08-2026: ของเสีย 16.10 kg, ผลิต 170.50 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-26', 'SLAN', 'เครื่อง 2', 'ดึก', 16.10, 16.10, 170.50, 170.50, 'done', 'done', '2026-08-26 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r16;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r16, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 5.20, NULL),
  (r16, 'ขี้สแลน', 10.90, 'ตัด1ท่อนสาเหตุตามภาพ 1เมตร เมตรที่90ม.');

  -- 27-08-2026: ของเสีย 1.30 kg, ผลิต 203.60 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-27', 'SLAN', 'เครื่อง 2', 'เช้า/ดึก', 1.30, 1.30, 203.60, 203.60, 'done', 'done', '2026-08-27 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r17;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r17, 'สแลนปูรองม้วน', 1.30, NULL);

  -- 28-08-2026: ของเสีย 18.90 kg, ผลิต 254.30 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-28', 'SLAN', 'เครื่อง 2', 'เช้า/ดึก', 18.90, 18.90, 254.30, 254.30, 'done', 'done', '2026-08-28 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r18;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r18, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 7.80, NULL),
  (r18, 'สแลนขาด', 11.10, NULL);

  -- 29-08-2026: ของเสีย 12.30 kg, ผลิต 351.80 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-29', 'SLAN', 'เครื่อง 2', 'เช้า/ดึก', 12.30, 12.30, 351.80, 351.80, 'done', 'done', '2026-08-29 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r18;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r18, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 10.90, NULL),
  (r18, 'ความกว้างไม่ได้ถึง', 1.40, NULL);

  -- 31-08-2026: ของเสีย 2.60 kg, ผลิต 92.50 kg
  INSERT INTO daily_waste_reports (report_date, department_code, machine_no, shift, total_waste_kg, waste_weight_kg, production_kg, production_weight_kg, status, accounting_status, accounting_checked_at, note)
  VALUES ('2026-08-31', 'SLAN', 'เครื่อง 2', 'เช้า', 2.60, 2.60, 92.50, 92.50, 'done', 'done', '2026-08-31 18:00:00+07', 'นำเข้าข้อมูลตัวอย่าง ส.ค. 2569')
  RETURNING r18;

  INSERT INTO daily_waste_report_items (report_id, problem_type, waste_weight_kg, note) VALUES
  (r18, 'เศษฟิล์มแผ่นข้าง(บน,หน้า,ริม,ล่าง,ตู้)', 2.60, NULL);

END $$;
