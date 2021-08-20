SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BOC bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MariaDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Tanu', 'Ankit', 200, '2021-04-17 18:58:27'),
(2, 'Tanu', 'Ankit', 200, '2021-04-17 19:00:31'),
(3, 'Ankit', 'Umesh', 5000, '2021-04-17 19:01:32'),
(4, 'Tanu', 'Umesh', 5000, '2021-04-17 19:06:15'),
(5, 'Aahna', 'Ankit', 500, '2021-04-17 19:28:24'),
(6, 'Aahna', 'Ankit', 500, '2021-04-17 19:30:31'),
(7, 'Aahna', 'Ankit', 200, '2021-04-17 19:31:22'),
(8, 'Siddhu', 'Arman', 520, '2021-04-18 07:39:58'),
(9, 'Arka', 'Tanu', 500, '2021-04-18 09:37:08'),
(10, 'Tanu', 'Arman', 100, '2021-04-18 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=MariaDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1087, 'Ankit', 'shah@gmail.com', 46600),
(2654, 'Arman', 'chuha@gmail.com', 30620),
(3624, 'Gaurav', 'mail@gmail.com', 40000),
(4542, 'Aahna', 'indian@gmail.com', 48800),
(5345, 'Tanu', 'BOC@gmail.com', 35000),
(5465, 'Arka', 'baby@gmail.com', 49500),
(6554, 'Umesh', 'oveday@gmail.com', 40000),
(7875, 'Siddhu', 'ajji@gmail.com', 49480),
(8877, 'Suvam', 'erimal@gmail.com', 40000),
(9245, 'Sachin', 'alla@gmail.com', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--f
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

