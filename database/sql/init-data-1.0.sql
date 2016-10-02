use sale;
TRUNCATE TABLE `fund_history`;
TRUNCATE TABLE `fund_history_type`;
TRUNCATE TABLE `fund`;
TRUNCATE TABLE `user`;
TRUNCATE TABLE `branch`;
TRUNCATE TABLE `role`;
TRUNCATE TABLE `export_type`;

-- `branch`
INSERT INTO  `sale`.`branch` (`id` ,`name` ,`address` ,`create_date`) VALUE ( NULL ,  'Cửa Hàng Số 1',  'Số 19 - Vạn Phúc - Hà Đông - Hà Nội',  '2016-09-30 23:22:37');
INSERT INTO  `sale`.`branch` (`id` ,`name` ,`address` ,`create_date`) VALUE ( NULL ,  'Cửa Hàng Số 2',  'Số 3 - Lê Văn Lương - Vạn Phúc - Hà Đông - Hà Nội',  '2016-09-30 23:23:04');
INSERT INTO  `sale`.`branch` (`id` ,`name` ,`address` ,`create_date`) VALUE ( NULL ,  'Cửa Hàng Số 2',  'Số 5 - Lê Văn Lương - Vạn Phúc - Hà Đông - Hà Nội',  '2016-09-30 23:24:01');

-- `role`
INSERT INTO  `sale`.`role` (`id` ,`role_name` ,`description` ) VALUE ( NULL , 'Quản Trị','Có thể thực hiện mọi thao tác');
INSERT INTO  `sale`.`role` (`id` ,`role_name` ,`description` ) VALUE ( NULL , 'Nhập liệu','Có thể nhập hàng và bán hàng');
INSERT INTO  `sale`.`role` (`id` ,`role_name` ,`description` ) VALUE ( NULL , 'Bán Hàng','Chỉ có thể thực hiện bán hàng');


-- `user`
INSERT INTO  `sale`.`user` (`id` ,`username` ,`password` ,`phone` ,`firstname` ,`lastname` ,`address` ,`email` ,`is_active` ,`birth_day` ,`create_date` ,`branch_id`,`role_id`)
VALUE (NULL ,  'due',  '123456',  '0979355285',  'Trần',  'Trí Duệ',  'Số 19 - Vạn Phúc - Hà Đông - Hà Nội',  'trantridue@gmail.com',  1 ,  '1982-12-20',  '2016-09-30 23:27:14',  '1', '1');
INSERT INTO  `sale`.`user` (`id` ,`username` ,`password` ,`phone` ,`firstname` ,`lastname` ,`address` ,`email` ,`is_active` ,`birth_day` ,`create_date` ,`branch_id`,`role_id`)
VALUE (NULL ,  'tam',  '123456',  '0965090768',  'Vũ',  'Thị Tâm',  'Ngọc Trục - Đại Mỗ - Nam Từ Liêm - Hà Nội',  'vuthitam@gmail.com',  1 ,  '1991-11-20',  '2016-09-30 23:28:44',  '2', '2');
INSERT INTO  `sale`.`user` (`id` ,`username` ,`password` ,`phone` ,`firstname` ,`lastname` ,`address` ,`email` ,`is_active` ,`birth_day` ,`create_date` ,`branch_id`,`role_id`)
VALUE (NULL ,  'trang',  '123456',  '0988403015',  'Nguyễn',  'Thị Trang',  'Tây Mỗ - Nam Từ Liêm - Hà Nội',  'nguyenthitrang@gmail.com',  1 ,  '1996-09-13',  '2016-09-30 23:29:13',  '3', '3');

-- `fund`
INSERT INTO  `sale`.`fund` (`id` ,`fund_name` ,`description` ,`ratio`) VALUE (NULL ,  'KÉT SẮT',  'KÉT TIỀN MẶT',  '1');
INSERT INTO  `sale`.`fund` (`id` ,`fund_name` ,`description` ,`ratio`) VALUE (NULL ,  'GOLD',  'VÀNG',  '3600');
INSERT INTO  `sale`.`fund` (`id` ,`fund_name` ,`description` ,`ratio`) VALUE (NULL ,  'ATM-VTB-CHỒNG',  'THẺ ATM VIETINBANK CHỒNG',  '1');

-- `fund_history_type`
INSERT INTO  `sale`.`fund_history_type` (`id` ,`name` ) VALUE (NULL ,  'INCOME');
INSERT INTO  `sale`.`fund_history_type` (`id` ,`name` ) VALUE (NULL ,  'OUTCOME');
INSERT INTO  `sale`.`fund_history_type` (`id` ,`name` ) VALUE (NULL ,  'EXCHANGE');

-- `fund_history`
INSERT INTO  `sale`.`fund_history` (`id` ,`date` ,`quantity` ,`ratio` ,`description` ,`provider_id` ,`is_for_shop` ,`user_id` ,`fund_id`,`fund_histoty_type_id`) VALUE (NULL ,  '2016-10-02 13:33:36',  '9000',  '1',  'TIỀN MẶT', NULL ,  1,  '1',  '1','3');
INSERT INTO  `sale`.`fund_history` (`id` ,`date` ,`quantity` ,`ratio` ,`description` ,`provider_id` ,`is_for_shop` ,`user_id` ,`fund_id`,`fund_histoty_type_id`) VALUE (NULL ,  '2016-10-02 13:33:36',  '-9000',  '1',  'TIỀN MẶT', NULL ,  0,  '1',  '1','3');
INSERT INTO  `sale`.`fund_history` (`id` ,`date` ,`quantity` ,`ratio` ,`description` ,`provider_id` ,`is_for_shop` ,`user_id` ,`fund_id`,`fund_histoty_type_id`) VALUE (NULL ,  '2016-10-02 13:33:36',  '3',  '3000',  'Mua vàng', NULL ,  1,  '1',  '2','3');
INSERT INTO  `sale`.`fund_history` (`id` ,`date` ,`quantity` ,`ratio` ,`description` ,`provider_id` ,`is_for_shop` ,`user_id` ,`fund_id`,`fund_histoty_type_id`) VALUE (NULL ,  '2016-10-02 13:33:36',  '-3',  '3900',  'Mua vàng', NULL ,  0,  '1',  '2','3');
INSERT INTO  `sale`.`fund_history` (`id` ,`date` ,`quantity` ,`ratio` ,`description` ,`provider_id` ,`is_for_shop` ,`user_id` ,`fund_id`,`fund_histoty_type_id`) VALUE (NULL ,  '2016-10-02 13:33:36',  '11700',  '1',  'Mua vàng', NULL ,  1,  '1',  '1','3');

-- `export_type`
INSERT INTO  `sale`.`export_type` (`id` ,`name` ) VALUE (NULL ,  'OFFLINE');
INSERT INTO  `sale`.`export_type` (`id` ,`name` ) VALUE (NULL ,  'ONLINE');
INSERT INTO  `sale`.`export_type` (`id` ,`name` ) VALUE (NULL ,  'WHOLESALE');



