-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Oct 03, 2016 at 10:19 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET FOREIGN_KEY_CHECKS=0;

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

SET AUTOCOMMIT=0;
START TRANSACTION;

-- 
-- Database: `sale`
-- 

-- 
-- Dumping data for table `branch`
-- 

INSERT INTO `branch` (`id`, `name`, `address`, `create_date`) VALUES 
(1, 'Cửa Hàng Số 1', 'Số 19 - Vạn Phúc - Hà Đông - Hà Nội', '2016-09-30 23:22:37'),
(2, 'Cửa Hàng Số 2', 'Số 3 - Lê Văn Lương - Vạn Phúc - Hà Đông - Hà Nội', '2016-09-30 23:23:04'),
(3, 'Cửa Hàng Số 2', 'Số 5 - Lê Văn Lương - Vạn Phúc - Hà Đông - Hà Nội', '2016-09-30 23:24:01');

-- 
-- Dumping data for table `customer`
-- 


-- 
-- Dumping data for table `customer_return_product`
-- 


-- 
-- Dumping data for table `export_facture`
-- 


-- 
-- Dumping data for table `export_facture_product`
-- 


-- 
-- Dumping data for table `export_type`
-- 

INSERT INTO `export_type` (`id`, `name`) VALUES 
(1, 'OFFLINE'),
(2, 'ONLINE'),
(3, 'WHOLESALE');

-- 
-- Dumping data for table `fund`
-- 

INSERT INTO `fund` (`id`, `fund_name`, `description`, `ratio`) VALUES 
(1, 'KÉT SẮT', 'KÉT TIỀN MẶT', 1),
(2, 'GOLD', 'VÀNG', 3600),
(3, 'ATM-VTB-CHỒNG', 'THẺ ATM VIETINBANK CHỒNG', 1);

-- 
-- Dumping data for table `fund_exchange`
-- 


-- 
-- Dumping data for table `import_facture`
-- 


-- 
-- Dumping data for table `import_facture_product`
-- 


-- 
-- Dumping data for table `product`
-- 


-- 
-- Dumping data for table `product_branch_exchage`
-- 


-- 
-- Dumping data for table `provider`
-- 

INSERT INTO `provider` (`id`, `provider_name`, `provider_phone`, `provider_address`, `description`) VALUES 
(1, 'Công ty TNHH Sơ Mi Việt Nam', '0977333222', '26 Cầu Giấy Hà Nội', 'Chuyên cung cấp hàng sơ mi nam sài gòn'),
(2, 'Zamy ', '0904333218', 'Tây Hồ - Hà Nội', 'Hàng VNXK'),
(3, 'Hiền Thiện', '0966322156', 'Xã Đàn - Hà Nội', 'Hàng May xuất khẩu'),
(4, 'Trang Jean Nữ', '0987223856', 'Hà Đông - Hà Nội', 'Chuyên Cung cấp quần jean nam, nữ');

-- 
-- Dumping data for table `provider_payment_history`
-- 


-- 
-- Dumping data for table `return_provider_facture`
-- 


-- 
-- Dumping data for table `return_provider_facture_product`
-- 


-- 
-- Dumping data for table `role`
-- 

INSERT INTO `role` (`id`, `role_name`, `description`) VALUES 
(1, 'Quản Trị', 'Có thể thực hiện mọi thao tác'),
(2, 'Nhập liệu', 'Có thể nhập hàng và bán hàng'),
(3, 'Bán Hàng', 'Chỉ có thể thực hiện bán hàng');

-- 
-- Dumping data for table `spending`
-- 


-- 
-- Dumping data for table `user`
-- 

INSERT INTO `user` (`id`, `username`, `password`, `phone`, `firstname`, `lastname`, `address`, `email`, `is_active`, `birth_day`, `create_date`, `branch_id`, `role_id`, `base_salary`) VALUES 
(1, 'due', '123456', '0979355285', 'Trần', 'Trí Duệ', 'Số 19 - Vạn Phúc - Hà Đông - Hà Nội', 'trantridue@gmail.com', '1', '1982-12-20', '2016-09-30 23:27:14', 1, 1, 3000),
(2, 'tam', '123456', '0965090768', 'Vũ', 'Thị Tâm', 'Ngọc Trục - Đại Mỗ - Nam Từ Liêm - Hà Nội', 'vuthitam@gmail.com', '1', '1991-11-20', '2016-09-30 23:28:44', 2, 2, 3000),
(3, 'trang', '123456', '0988403015', 'Nguyễn', 'Thị Trang', 'Tây Mỗ - Nam Từ Liêm - Hà Nội', 'nguyenthitrang@gmail.com', '1', '1996-09-13', '2016-09-30 23:29:13', 3, 3, 3000);

-- 
-- Dumping data for table `user_base_salary_history`
-- 


-- 
-- Dumping data for table `user_payment_history`
-- 


SET FOREIGN_KEY_CHECKS=1;

COMMIT;
