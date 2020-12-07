-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 07, 2020 at 05:28 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_recommendation`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_job`
--

CREATE TABLE `apply_job` (
  `id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `recruitment_post_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apply_job`
--

INSERT INTO `apply_job` (`id`, `candidate_id`, `recruitment_post_id`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2020-11-29 12:56:45', '2020-11-29 12:56:45'),
(2, 1, 2, '2020-11-29 12:56:53', '2020-11-29 12:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `cv_link` varchar(256) DEFAULT NULL,
  `job_title` varchar(200) DEFAULT NULL,
  `allow_search` varchar(20) DEFAULT 'Có',
  `minimum_salary` varchar(200) DEFAULT '0',
  `maximum_salary` varchar(200) DEFAULT '0',
  `experience` varchar(200) DEFAULT NULL,
  `education_levels` varchar(200) DEFAULT NULL,
  `languages` varchar(200) DEFAULT 'Vietnamese',
  `description` text DEFAULT NULL,
  `facebook_link` varchar(200) DEFAULT NULL,
  `twitter_link` varchar(200) DEFAULT NULL,
  `linkedin_link` varchar(200) DEFAULT NULL,
  `github_link` varchar(200) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT 'Viet Nam',
  `city` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `user_id`, `name`, `cv_link`, `job_title`, `allow_search`, `minimum_salary`, `maximum_salary`, `experience`, `education_levels`, `languages`, `description`, `facebook_link`, `twitter_link`, `linkedin_link`, `github_link`, `phone_number`, `email`, `website`, `country`, `city`) VALUES
(1, 1, 'Hương Ngọc ', NULL, 'UX design', 'Có', '20000000', '25000000', '1-3 năm', 'Senior', 'Tiếng Anh', 'candidate_cv candidate_cv candidate_cv', 'https://www.facebook.com/huongnguyen.nh', 'https://www.facebook.com/huongnguyen.nh2', 'https://www.facebook.com/huongnguyen.nh3', 'https://www.facebook.com/huongnguyen.nh4', NULL, 'huong@gmail.com', 'https://www.facebook.com/huongnguyen.nh', 'Việt Nam', 'TP.HCM'),
(2, 11, 'Hương. nè', 'cv/Screen Shot 2020-11-27 at 10.03.06.png', 'Dev', 'Có', '30000000', '40000000', '3-6 năm', 'Junior', 'Tiếng Việt', 'user.candidate@gmail.com', 'user.candidate@gmail.com1', 'user.candidate@gmail.com2', 'user.candidate@gmail.com4', 'user.candidate@gmail.com3', '0987654321', 'user.candidate@gmail.com0', 'user.candidate@gmail.com5', 'Việt Nam', 'TP.HCM');

-- --------------------------------------------------------

--
-- Table structure for table `candidates_education`
--

CREATE TABLE `candidates_education` (
  `id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `year` varchar(200) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `scores` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidates_education`
--

INSERT INTO `candidates_education` (`id`, `candidate_id`, `school_name`, `year`, `major`, `description`, `scores`, `created_at`, `updated_at`) VALUES
(1, 1, 'FPT High School', '2009-2014', 'Computer Science', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '8.9', '2020-11-23 11:21:35', '2020-11-23 11:21:35'),
(2, 1, 'Open University', '2004-2018', 'Computer Science', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '10.0', '2020-11-23 11:21:35', '2020-11-23 11:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `candidates_skill`
--

CREATE TABLE `candidates_skill` (
  `id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `skill_name` varchar(255) DEFAULT NULL,
  `level` varchar(200) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `candidates_skill`
--

INSERT INTO `candidates_skill` (`id`, `candidate_id`, `skill_name`, `level`, `created_at`, `updated_at`) VALUES
(1, 1, 'SQL database', '90', '2020-11-23 11:29:09', '2020-11-23 11:29:09'),
(2, 1, 'NoSQL', '80', '2020-11-23 11:29:09', '2020-11-23 11:29:09'),
(3, 1, 'NodeJS', '90', '2020-11-23 11:29:35', '2020-11-23 11:29:35'),
(4, 1, 'HTML/CSS/JS', '80', '2020-11-23 11:29:35', '2020-11-23 11:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `introduce` text DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`id`, `user_id`, `name`, `introduce`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Viettel Telecom', 'Tập đoàn Công nghiệp – Viễn thông Quân đội (Viettel) là doanh nghiệp kinh tế quốc phòng 100% vốn nhà nước, chịu trách nhiệm kế thừa các quyền, nghĩa vụ pháp lý và lợi ích hợp pháp của Tổng Công ty Viễn thông Quân đội. Tập đoàn Viễn thông Quân đội (Viettel) do Bộ Quốc phòng thực hiện quyền chủ sở hữu và là một doanh nghiệp quân đội kinh doanh trong lĩnh vực bưu chính - viễn thông và công nghệ thông tin. Với slogan \"Hãy nói theo cách của bạn\", Viettel luôn cố gắng nỗ lực phát triển vững bước trong thời gian hoạt động.\r\n\r\nKhối Công nghệ thông tin trực thuộc Viettel với nhiệm vụ nghiên cứu, xây dựng và triển khai các hệ thống CNTT phục vụ Viettel/doanh nghiệp cả trong và ngoài nước.\r\n\r\nSản phẩm phần mềm của chúng tôi ngoài phục vụ kinh doanh, quản lý, khai thác tại thị trường Việt Nam, những năm qua đã được triển khai trên 10 thị trường nước ngoài là Lào, Campuchia, Đông timor, Peru, Mozambique, Haiti, Cameroon, Tanzania, Burundi, Myanmar.\r\n\r\n', '2020-10-29 17:08:05', '2020-10-29 17:08:05'),
(2, 3, 'NashTech', 'As a brand of Harvey Nash Group, NashTech has committed to deliver the very best talents, IT solutions and Business Process Services to our international clients in the UK, Europe, Asia Pacific & the US.\r\n\r\nWe have over 1,600 software engineers through our development centers in Ho Chi Minh City and Ha Noi, pursuing the highest levels of integrity and quality in providing a unique portfolio of services including:\r\n\r\n• Software Development\r\n\r\n• Business Process Services (BPS)\r\n\r\n• IT Infrastructure & Maintenance\r\n\r\n• Communications Technology R&D\r\n\r\nWHY NASHTECH:\r\n\r\nPeople are extremely important to us and that’s why we have a clear vision: to make NashTech a great place to work in its sector. We pride ourselves on:\r\n\r\n• Professional and Flexible Working Environment\r\n\r\n• Great Teamwork\r\n\r\n• International Assignments\r\n\r\n• WeCare WeShare WeDare WeInnovate Engagement Program', '2020-10-31 17:08:05', '2020-10-29 17:08:05'),
(4, 10, NULL, NULL, '2020-12-02 16:00:02', '2020-12-02 16:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `recruitment_post`
--

CREATE TABLE `recruitment_post` (
  `id` int(11) NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `employer_id` int(11) NOT NULL,
  `criteria_recruit` text DEFAULT NULL COMMENT 'tiêu chí/yc công việc',
  `expiredAt` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `salary` varchar(256) DEFAULT NULL COMMENT 'mức lương',
  `experience` varchar(256) DEFAULT NULL COMMENT 'kinh nghiệm',
  `address` varchar(256) DEFAULT NULL COMMENT 'địa chỉ làm việc',
  `form_of_work` varchar(256) DEFAULT NULL COMMENT 'fulltime/parttime',
  `gender_required` varchar(256) DEFAULT NULL,
  `benefit` text DEFAULT NULL,
  `job_tag` varchar(256) DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT 1,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recruitment_post`
--

INSERT INTO `recruitment_post` (`id`, `title`, `employer_id`, `criteria_recruit`, `expiredAt`, `quantity`, `description`, `salary`, `experience`, `address`, `form_of_work`, `gender_required`, `benefit`, `job_tag`, `isActive`, `createdAt`, `updatedAt`) VALUES
(1, 'KỸ SƯ AN TOÀN THÔNG TIN HỆ THỐNG ỨNG DỤNG', 1, '- Tốt nghiệp đại học chuyên ngành Công nghệ thông tin, Điện tử viễn thông, An toàn thông tin.\r\n\r\n- Đánh giá, rà soát, phát hiện các lỗ hổng ATTT.\r\n\r\n- Triển khai các giải pháp tăng cường ATTT.\r\n\r\n- Sử dụng thành thạo windows server và các hệ điều hành mã nguồn mở (Redhat, Centos, Debian…)\r\n\r\n- Có kiến thức về các cơ sở dữ liệu như: Oracle, Mysql, MSSQL.\r\n\r\n- Có các kiến thức về Mạng, giao thức kết nối TCP/UDP.\r\n\r\n- Nắm được các kiến thức về mạng viễn thông (Tổng đài, MSC,..).', '2021-02-27 17:03:07', 2, '- Kiểm tra, đánh giá phát hiện các lỗ hổng ATTT hệ thống, mạng, máy tính người dùng\r\n\r\n- Đảm bảo ATTT cho các hệ thống, ứng dụng từ khi xây dựng giải pháp, thiết kế mô hình đến khi triển khai, vận hành\r\n\r\n- Rà soát ATTT cho các hệ thống/phân hệ sắp triển khai theo yêu cầu.', 'Thỏa thuận', '2 năm', ' Tầng 42_Tòa Keangnam Lanmark 72 _ Nam Từ Liêm _ Hà Nội', 'Fulltime', 'Không yêu cầu', '- Thu nhập hấp dẫn tùy theo năng lực của từng cá nhân\r\n\r\n- Môi trường làm việc trẻ trung, năng động\r\n\r\n- Tham dự các dự án lớn, ứng dụng các công nghệ hàng đầu\r\n\r\n- Tham dự hội thảo chuyên ngành trên toàn thế giới\r\n\r\n- Lộ trình thăng tiến và phát triển sự nghiệp\r\n\r\n- Chế độ nghỉ mát và khám sức khỏe, đóng BHXH theo quy định của Luật lao động.', 'điện tử viễn thông | IT phần cứng/mạng | IT phần mềm', 1, '2020-10-29 17:05:23', '2020-10-29 17:05:23'),
(2, 'SR FRONTEND DEVELOPER (JOINING BONUS)', 2, 'University degree in Computer Sciences, or equivalent\r\n3+ year experience in FE competence\r\nExperienced in HTML/CSS, JavaScript/TypeScript and pre-processing languages such as LESS/SASS/SCSS\r\nExperienced in layout techniques and frameworks such as Bootstrap, Material\r\nExperienced in one of modern JS frameworks/libraries such as React, Angular, Vue,…\r\nExperienced in working with Vanilla JS, customer\'s libraries and frameworks\r\nExperienced in CLI, setup project environment, running automated test using libraries such as Jest, Mocha, Chai\r\nExperienced in web service development (SOAP, REST)\r\nGood awareness about security and performance in web development\r\nProficient in code review, code refactoring, Unit Testing\r\nExperience working in an Agile Software Development environment\r\nCan perform the backends’ work (NodeJS, Python, Ruby, PHP) is a plus\r\nGood communication in English ', '2021-03-19 17:03:07', 4, 'The Senior Software Engineer (SSE) is responsible to write software programs from design specifications; Plans, executes and documents unit tests; Reports status and issues; Documents detailed designs; Accountable for unit test leakage; Contributes to system architecture and design decisions.\r\n\r\nTo write software programs from design specifications that are in compliance with established coding quality standard of the company.\r\nPerform the code review, code refactor if required\r\nTo be trained or self-train on new technologies.\r\nPlans, executes and document unit/integration tests\r\nEncourage to contribute the ideas for system architecture and design decisions.\r\nJoin in all required phases from planning, estimation, designing, developing the implementation, testing, and deployment to maintenance. ', '25000000', '4 năm', ' Hà Nội, Hồ Chí Minh', 'Fulltime', 'Không yêu cầu', '13 month salary per year.\r\nPerformance bonus (up to 2-month salary)\r\nFlexible option bonus for good performers & retention bonus for outstanding performers.\r\nSocial – Health – Insurance paid fully.\r\nHealthcare: Annual health check-up, Premium Health Insurance (plus 1 slot for your dependent).\r\nAnnual leaves: 14 ~ 18 days.\r\nClubs program: Football, Badminton, Swimming, Tennis, Rock, Yoga…\r\nTraining courses: Technical skills – Soft skills – English\r\n', 'điện tử viễn thông | IT phần cứng/mạng | IT phần mềm', 1, '2020-10-29 17:05:23', '2020-10-29 17:05:23'),
(12, 'Công việc thứ 2', 1, 'Tiêu chí/yêu cầu công việc của job 2', '2020-11-24 00:00:00', 10, 'Mô tả cho công việc thứ 2', '20.000.000 - 25.000.000', '1 năm', '15 Nguyễn Kiệm', 'Part-time', 'Không yêu cầu', 'Chưa cần thiết', '', 0, '2020-11-21 17:45:13', '2020-11-21 17:45:13'),
(14, 'Chuyên Viên Kinh Doanh Khách Hàng Cao Cấp (Hội Sở)', 1, '- Tốt nghiệp đại học chuyên ngành Kinh tế, tài chính, ngân hàng hoặc tương đương\r\n- Ngoại hình đẹp, nữ cao từ 1m60, nam cao từ 1m70 trở lên.\r\n- Khéo léo, nhanh nhẹn, giao tiếp, có kỹ năng thuyết phục khách hàng, giải quyết tình huống tốt\r\n- Có khả năng tạo dựng quan hệ tốt với khách hàng.\r\nƯu tiên ứng viên đã có kinh nghiệm làm về chăm sóc khách hàng VIP tại các ngân hàng, đặc biệt trong mảng huy động vốn.', '2020-12-24 00:00:00', 5, '- Tạo cơ sở khách hàng phát triển kinh doanh nhằm đạt được chỉ tiêu công việc hàng tháng\r\n- Đề xuất và triển khai các chương trình sự kiện cao cấp thu hút khách hàng tham gia\r\n- Nhận chỉ tiêu kinh doanh từ trưởng đơn vị theo kế hoạch chung phòng và của nhóm; Quản lý danh mục khách hàng cá nhân có tài sản lớn.\r\n- Làm đầu mối tiếp nhận các nhu cầu của khách hàng cao cấp và điều phối các bộ phận nghiệp vụ liên quan xử lý cho khách hàng đảm bảo đúng tiến độ và chất lượng cam kết theo chính sách khách hàng cao cấp của Ngân hàng\r\n- Tìm hiểu và định hướng nhu cầu đầu tư tài chính trong tương lai của khách hàng\r\n- Báo cáo hàng ngày về tăng trưởng khách hàng, số dư tiền gửi đến hạn, các sản phẩm dịch vụ khác của phòng và nhóm phụ trách.', '20.000.000 - 25.000.000', 'Không', ' 214 Phan Đăng Lưu, P3, Q. Phú Nhuận, TP.HCM', 'Fulltime', 'Không yêu cầu', '- Mức lương cạnh tranh\r\n- Môi trường làm việc trẻ, năng động và chuyên nghiệp\r\n- Cơ hội thăng tiến và đào tạo\r\n- Đóng BHXH, BHYT, BHTN theo quy định nhà nước.\r\n- Nghỉ phép năm theo quy định của nhà nước.\r\n- Du lịch mỗi năm 1 lần và các hoạt động của Công ty.\r\n- Thưởng lễ, tết và phúc lợi khác theo chính sách của Công ty.\r\n- Được đào tạo đầu vào và cơ hội thăng tiến.', '', 0, '2020-12-05 17:14:14', '2020-12-05 17:14:14'),
(15, 'Chuyên Viên Kinh Doanh Khách Hàng Cao Cấp', 4, '- Tốt nghiệp đại học chuyên ngành Kinh tế, tài chính, ngân hàng hoặc tương đương\r\n- Ngoại hình đẹp, nữ cao từ 1m60, nam cao từ 1m70 trở lên.\r\n- Khéo léo, nhanh nhẹn, giao tiếp, có kỹ năng thuyết phục khách hàng, giải quyết tình huống tốt\r\n- Có khả năng tạo dựng quan hệ tốt với khách hàng.\r\nƯu tiên ứng viên đã có kinh nghiệm làm về chăm sóc khách hàng VIP tại các ngân hàng, đặc biệt trong mảng huy động vốn.', '2012-12-06 00:00:00', 5, '\r\n- Tạo cơ sở khách hàng phát triển kinh doanh nhằm đạt được chỉ tiêu công việc hàng tháng\r\n- Đề xuất và triển khai các chương trình sự kiện cao cấp thu hút khách hàng tham gia\r\n- Nhận chỉ tiêu kinh doanh từ trưởng đơn vị theo kế hoạch chung phòng và của nhóm; Quản lý danh mục khách hàng cá nhân có tài sản lớn.\r\n- Làm đầu mối tiếp nhận các nhu cầu của khách hàng cao cấp và điều phối các bộ phận nghiệp vụ liên quan xử lý cho khách hàng đảm bảo đúng tiến độ và chất lượng cam kết theo chính sách khách hàng cao cấp của Ngân hàng\r\n- Tìm hiểu và định hướng nhu cầu đầu tư tài chính trong tương lai của khách hàng\r\n- Báo cáo hàng ngày về tăng trưởng khách hàng, số dư tiền gửi đến hạn, các sản phẩm dịch vụ khác của phòng và nhóm phụ trách', '15.000.000 - 20.000.000', '', '214 Phan Đăng Lưu, P3, Q. Phú Nhuận, TP.HCM', 'Fulltime', 'Không yêu cầu', '- Mức lương cạnh tranh\r\n- Môi trường làm việc trẻ, năng động và chuyên nghiệp\r\n- Cơ hội thăng tiến và đào tạo\r\n- Đóng BHXH, BHYT, BHTN theo quy định nhà nước.\r\n- Nghỉ phép năm theo quy định của nhà nước.\r\n- Du lịch mỗi năm 1 lần và các hoạt động của Công ty.\r\n- Thưởng lễ, tết và phúc lợi khác theo chính sách của Công ty.\r\n- Được đào tạo đầu vào và cơ hội thăng tiến.', '', 0, '2020-12-06 12:50:13', '2020-12-06 12:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'candidate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `phone`, `password`, `role`) VALUES
(1, 'employer@gmail.com', '0388757538', NULL, 'user'),
(2, 'user@gmail.com', '12345678', NULL, 'user'),
(3, 'huong@gmail.com', '12345', '111111', 'employer'),
(4, 'huong1@gmail.com', '12345', '111111', 'employer'),
(5, 'huong2@gmail.com', '12345', '96e79218965eb72c92a549dd5a330112', 'candidate'),
(6, 'huong3@gmail.com', '123321', 'bd9c27f0494951476e509089d222f723', 'candidate'),
(10, 'admin.employer@gmail.com', '098765432', 'bd9c27f0494951476e509089d222f723', 'employer'),
(11, 'user.candidate@gmail.com', '098765432', 'bd9c27f0494951476e509089d222f723', 'candidate');

-- --------------------------------------------------------

--
-- Table structure for table `working_experience`
--

CREATE TABLE `working_experience` (
  `id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `year` varchar(200) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `working_experience`
--

INSERT INTO `working_experience` (`id`, `candidate_id`, `company_name`, `year`, `position`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'PayME Tech', '2010-2020', 'Developer', 'Take part in dev any application in web/mobile app, Join to dev in position backend dev', '2020-11-23 11:25:54', '2020-11-23 11:25:54'),
(2, 2, 'Công ty TNHH công nghệ ME', '2012 - 2020', 'Backend Developer', 'Take part in dev any application in web/mobile app, Join to dev in position backend dev', '2020-11-23 11:25:54', '2020-11-23 11:25:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_job`
--
ALTER TABLE `apply_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recruitment_post_id` (`recruitment_post_id`),
  ADD KEY `apply_job_ibfk_1` (`candidate_id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `candidates_education`
--
ALTER TABLE `candidates_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidates_education_ibfk_1` (`candidate_id`);

--
-- Indexes for table `candidates_skill`
--
ALTER TABLE `candidates_skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidates_skill_ibfk_1` (`candidate_id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `recruitment_post`
--
ALTER TABLE `recruitment_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employer_id` (`employer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `working_experience`
--
ALTER TABLE `working_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `working_experience_ibfk_1` (`candidate_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply_job`
--
ALTER TABLE `apply_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidates_education`
--
ALTER TABLE `candidates_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `candidates_skill`
--
ALTER TABLE `candidates_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `recruitment_post`
--
ALTER TABLE `recruitment_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `working_experience`
--
ALTER TABLE `working_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apply_job`
--
ALTER TABLE `apply_job`
  ADD CONSTRAINT `apply_job_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`),
  ADD CONSTRAINT `apply_job_ibfk_2` FOREIGN KEY (`recruitment_post_id`) REFERENCES `recruitment_post` (`id`);

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `candidates_education`
--
ALTER TABLE `candidates_education`
  ADD CONSTRAINT `candidates_education_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`);

--
-- Constraints for table `candidates_skill`
--
ALTER TABLE `candidates_skill`
  ADD CONSTRAINT `candidates_skill_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`);

--
-- Constraints for table `employers`
--
ALTER TABLE `employers`
  ADD CONSTRAINT `employers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `recruitment_post`
--
ALTER TABLE `recruitment_post`
  ADD CONSTRAINT `recruitment_post_ibfk_1` FOREIGN KEY (`employer_id`) REFERENCES `employers` (`id`);

--
-- Constraints for table `working_experience`
--
ALTER TABLE `working_experience`
  ADD CONSTRAINT `working_experience_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
