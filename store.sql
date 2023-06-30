-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 12:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(111) NOT NULL,
  `details` varchar(333) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `pic`, `details`, `date`) VALUES
(12, 'INJECTION', 'photo_2023-05-17_07-55-32.jpg', '', '2023-05-17 15:02:22'),
(13, 'SYRUP', 'photo_2023-05-17_07-55-21.jpg', '', '2023-05-17 15:02:50'),
(14, 'CREAM', 'photo_2023-05-17_07-55-28.jpg', '', '2023-05-17 15:03:20'),
(15, 'CAPSULE', 'photo_2023-05-17_07-55-25.jpg', '', '2023-05-17 15:03:47'),
(16, 'AMPULES', 'photo_2023-05-17_07-55-34.jpg', '', '2023-05-17 15:04:18'),
(20, 'DROPPER', 'photo_2023-05-17_10-26-11.jpg', '', '2023-05-17 17:29:04'),
(22, 'BANDAGES', 'photo_2023-05-17_10-32-24.jpg', '', '2023-05-17 17:35:22'),
(23, 'OINTMENTS', 'photo_2023-05-17_10-41-59.jpg', '', '2023-05-17 17:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `inventeries`
--

CREATE TABLE `inventeries` (
  `id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `supplier` varchar(222) NOT NULL,
  `name` text NOT NULL,
  `unit` text NOT NULL,
  `price` text NOT NULL,
  `pic` text NOT NULL,
  `description` text NOT NULL,
  `company` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inventeries`
--

INSERT INTO `inventeries` (`id`, `catId`, `supplier`, `name`, `unit`, `price`, `pic`, `description`, `company`, `date`) VALUES
(33, 16, 'zainab', 'Nalbuphine', '1 ml', '5000', '', 'Nalbuphine is an opioid agonist-antagonist used to treat pain, for pre and postoperative analgesia, and for analgesia in labor and delivery. A narcotic used as a pain medication. It appears to be an agonist at kappa opioid receptors and an antagonist or partial agonist at mu opioid receptors.', 'US', '2023-05-18 09:40:10'),
(34, 20, 'zainab', 'Ofloxacin', '5 ml', '9000', '', 'Ophthalmic ofloxacin ophthalmic is used to treat bacterial infections of the eye, including conjunctivitis (pink eye) and ulcers of the cornea.', 'US', '2023-05-18 09:43:37'),
(35, 20, 'zainab', 'Pataday', '2.5 ml', '7000', '', 'This medication is an antihistamine used to treat itching and redness in the eyes due to allergies.', 'US', '2023-05-18 09:45:30'),
(36, 23, 'zainab', 'Pharmasal', '2.5 g', '5000', '', 'Professionals recommend Pharmasal to relieve a wide range of muscular pains and stiffness, including: Thigh pain, backache, muscle cramps and rheumatic pain (in muscles, tendons, joints or bones), as well as joint pain, minor sports injuries, sprain and strain.', 'US', '2023-05-18 09:47:45'),
(37, 23, 'zainab', 'Hydrocortisone', '28.35 g', '10000', '', 'Hydrocortisone topical is used to treat redness, swelling, itching, and discomfort of various skin conditions. Hydrocortisone is in a class of medications called corticosteroids. It works by activating natural substances in the skin to reduce swelling, redness, and itching.', 'US', '2023-05-18 09:50:06'),
(38, 22, 'zainab', 'First aid', '50', '2000', '', 'bandage is used to hold a dressing in place over a wound, to create pressure over a bleeding wound for control of hemorrhage, to secure a splint to an injured part of the body, and to provide support to an injured part', 'US', '2023-05-18 09:54:33'),
(39, 15, 'zainab', 'Alpha lipoic acid', '500 mg', '15000', '', 'Alpha-lipoic acid is a medication used to manage and treat chronic diseases associated with oxidative stress, such as diabetic neuropathy, and slow down the onset of metabolic syndrome by acting as an antioxidant.', 'US', '2023-05-18 09:56:51'),
(41, 15, 'zainab', 'Xenical', '120 mg', '6000', '', 'xenical is a medicine used to treat obesity. It works in your digestive system to block about one-third of the fat in the food you eat from being digested. Xenical attaches to the enzymes in your digestive system (lipases) and blocks them from breaking down some of the fat you have eaten during your meal', 'US', '2023-05-18 10:56:17'),
(42, 15, 'zainab', 'Orlistat', '120 mg', '7000', '', 'orlistat is used together with a reduced-calorie diet to help you lose weight and to help keep the lost weight from returning. It is also used in overweight people who may also have diabetes, high blood pressure, high cholesterol, or heart disease', 'US', '2023-05-18 10:57:46'),
(43, 15, 'zainab', 'Amoxicillin', '500 mg', '2000', '', 'Amoxicillin is used to treat a wide variety of bacterial infections.This medication is a penicillin type antibiotic.It works by stopping the growth of bacteria.This antibiotic treats only bacterial infections. It will not work for viral infection.Using any antibiotic when it is not needed can cause it to not work for future infections.Amoxicillin is also used with other medications to treat stomach ulcers caused by the bacteria H. pylori and to prevent the ulcers from returning.', 'US', '2023-05-18 10:59:01'),
(44, 12, 'zainab', 'Clexane 2000', '0.2ml', '7000', '', 'Clexane belongs to a group of drugs called anticoagulants. Clexane stops unwanted blood clots from forming and can stop any blood clots that have already formed from growing bigger.', 'US', '2023-05-18 11:01:06'),
(45, 12, 'zainab', 'Insulin', '0.3 ml', '4000', '', 'Human insulin comes as a solution (liquid) and a suspension (liquid with particles that will settle on standing). to be injected subcutaneously (under the skin). Human insulin is usually injected subcutaneously several times a day, and more than one type of insulin may be needed.', 'US', '2023-05-18 11:02:27'),
(46, 12, 'zainab', 'Doxorubicin', '5 ml', '22000', '', 'Doxorubicin is a type of chemotherapy drug called an anthracycline. It slows or stops the growth of cancer cells by blocking an enzyme called topo isomerase 2. Cancer cells need this enzyme to divide and grow. You might have doxorubicin in combination with other chemotherapy drugs.', 'US', '2023-05-18 11:03:33'),
(47, 13, 'zainab', 'Benadryl', '150 ml', '8000', '', 'Benadryl Syrup is used in the treatment of cough, and also, relieves allergy symptoms such as runny nose, stuffy nose, sneezing, watery eyes and congestion or stuffiness', 'US', '2023-05-18 11:07:21'),
(48, 14, 'zainab', 'Mebo', '28.35 g', '5000', '', 'MEBO burn repair is 100% natural ointment, which assist the natural healing and repair of all burns, scalds and sunburn. MEBO burn repair helps clear away toxic material and promotes the natural repair and regeneration of new skin. MEBO burn repair provides a cooling and soothing effect on the skin.', 'US', '2023-05-18 11:11:40'),
(49, 14, 'zainab', 'Fuci ', '15 g', '4000', '', 'FUCI CREAM contains fusidic acid which belongs to the group of medicines called Antibiotics. It is used in the treatment of bacterial skin infections such as impetigo (crusty patchy skin), infected dermatitis (inflamed skin with spots), infected cuts, and grazes in affected individuals.\r\nFUCI CREAM is not recommended for use in patients allergic to fusidic acid.', 'US', '2023-05-18 11:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `title`, `name`) VALUES
(1, 'PHARMACY STORE', 'PHARMACY STORE');

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `contact` varchar(222) NOT NULL,
  `discount` varchar(222) NOT NULL,
  `item` varchar(222) NOT NULL,
  `amount` varchar(222) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sold`
--

INSERT INTO `sold` (`id`, `name`, `contact`, `discount`, `item`, `amount`, `userId`, `date`) VALUES
(5, 'sam', '07754611141', '10%', '3', '25', 1, '2023-05-18 10:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `pic` text NOT NULL,
  `number` text NOT NULL,
  `address` text NOT NULL,
  `cnic` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(222) NOT NULL,
  `number` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `pic`, `number`, `date`) VALUES
(1, 'admin@gmail.com', 'admin', 'ZAINAB', 'fk.jpg', '1234567891', '2017-11-02 12:34:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventeries`
--
ALTER TABLE `inventeries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `inventeries`
--
ALTER TABLE `inventeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sold`
--
ALTER TABLE `sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
