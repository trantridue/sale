TRUNCATE TABLE `branch`;
TRUNCATE TABLE `user`;

-- `branch`
INSERT INTO  `sale`.`branch` (`id` ,`name` ,`address` ,`create_date`) VALUE ( NULL ,  'Cửa Hàng Số 1',  'Số 19 - Vạn Phúc - Hà Đông - Hà Nội',  '2016-09-30 23:22:37');
INSERT INTO  `sale`.`branch` (`id` ,`name` ,`address` ,`create_date`) VALUE ( NULL ,  'Cửa Hàng Số 2',  'Số 3 - Lê Văn Lương - Vạn Phúc - Hà Đông - Hà Nội',  '2016-09-30 23:23:04');
INSERT INTO  `sale`.`branch` (`id` ,`name` ,`address` ,`create_date`) VALUE ( NULL ,  'Cửa Hàng Số 2',  'Số 5 - Lê Văn Lương - Vạn Phúc - Hà Đông - Hà Nội',  '2016-09-30 23:24:01');


-- `user`
INSERT INTO  `sale`.`user` (`id` ,`username` ,`password` ,`phone` ,`firstname` ,`lastname` ,`address` ,`email` ,`is_active` ,`birthday` ,`create_date` ,`branch_id`)
VALUE (NULL ,  'due',  '123456',  '0979355285',  'Trần',  'Trí Duệ',  'Số 19 - Vạn Phúc - Hà Đông - Hà Nội',  'trantridue@gmail.com',  1 ,  '1982-12-20',  '2016-09-30 23:27:14',  '1');
INSERT INTO  `sale`.`user` (`id` ,`username` ,`password` ,`phone` ,`firstname` ,`lastname` ,`address` ,`email` ,`is_active` ,`birthday` ,`create_date` ,`branch_id`)
VALUE (NULL ,  'tam',  '123456',  '0965090768',  'Vũ',  'Thị Tâm',  'Ngọc Trục - Đại Mỗ - Nam Từ Liêm - Hà Nội',  'vuthitam@gmail.com',  1 ,  '1991-11-20',  '2016-09-30 23:28:44',  '2');
INSERT INTO  `sale`.`user` (`id` ,`username` ,`password` ,`phone` ,`firstname` ,`lastname` ,`address` ,`email` ,`is_active` ,`birthday` ,`create_date` ,`branch_id`)
VALUE (NULL ,  'trang',  '123456',  '0988403015',  'Nguyễn',  'Thị Trang',  'Tây Mỗ - Nam Từ Liêm - Hà Nội',  'nguyenthitrang@gmail.com',  1 ,  '1996-09-13',  '2016-09-30 23:29:13',  '3');
