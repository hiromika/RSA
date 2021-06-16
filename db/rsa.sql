-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2021 at 12:29 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_nasabah`
--

CREATE TABLE `tb_nasabah` (
  `id` int(11) NOT NULL,
  `user_log` int(11) NOT NULL,
  `user_code` varchar(20) NOT NULL,
  `user_nik` text NOT NULL,
  `user_name` text NOT NULL,
  `user_email` text NOT NULL,
  `file_path` text NOT NULL,
  `private_key` text NOT NULL,
  `status_en` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_nasabah`
--

INSERT INTO `tb_nasabah` (`id`, `user_log`, `user_code`, `user_nik`, `user_name`, `user_email`, `file_path`, `private_key`, `status_en`) VALUES
(13, 7, '123', 'OHvWJRZj02sT8TvX/8C0ahZqqzEoavnbmvmD4T3fibeXSOhEs7bgkHfpwvk0SjyHD3caT23ZiEy3vL2JPpliFgIc3KnZi8hzXEDQaJ0zzotd+SsT9RooOU/shjr1TwoBxbL9fpz0ksIaVRyFjQ7e+9NDrEj4arNTxu+N+6wk5IBPFe1Ob/yIdsh5RdDaEpnkNkQJIxlYVn9x3X41kHLfF6hNUtPXAn9ACSQ8XRX/XuJ/pRnApasfNjBxpwVlKXuJFihyyYaT1BU71upqQzTMjD0ymLwG38cK94znvFqcjobQ3+G4D7RwpwfrXHH+3xO3crKlGnit+Ht6V2UvWImWag==', 'PHppyZX5+6jfOCQ4MfVdzeSyRYt1C+xnChBKageBCAbT4vmu9RV6giuBqFoiJC6UCpH8TE8qVGYKOxoGZo4ZarU4GFt/76fkNdm4W1fC5dcecKRJpxTlXr7DQqBaEzOQTNwKTz0z/idp/qc1I6iGpSkUIF2Qg3ZsfVRpXXl/ihC/x1nF3yQDN8hC38c6OFNG1YiuaCagKDD4JThV7lgQGrgCdFKpOKveTtxGPjg8tYyVxD7Nl8tdxKBmmB6D9+bUgVc19Q6u0gh185bTzmLMu3qvfp7DWqzqRt9xHAINybetVNPtR1BT6jLya2pg99ZeHQ+CgfGpX77nVEDEHXp2jg==', 'Tq5rk6ZCX9p9uB5Bshvmcjqmmz4zDC3nBNYpXlvquzntQmCd+n1KbbYatem5xrBu0Y22NWTqGDsfjFCbZzIK/95Evv7pDix9Uycb0ZDmYPZw3k4ZeTObX/16mO9Cp0+AnM5jcBWSRzTHayLXTX9vRZUMXV9i5OAyfS+2v+epgM0uBK7TbgJ/IHAtdsN8pEDjR6X8o/IuzqtKsktLFo+Lm2PqusVQaCD905v3sqaaFZ2BUEwkVJXjKLJBCBsmDaBL9PXbU/fBS6Lwci+amBZQkan46MCjr3R5ekwMnv1sLuqBmvxbsBm87p9vkoZcR+LV2wMqKWLAHtC2wqIbDT3k1w==', 'file_data/60c944ece6371-1623803116.pdf', '-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCrVq8ccCJ6MTkF\nAGyCUwWKHPcivWTg32YeiHQvJXy5poVySSXATFKn08bNFHzqdWDLikiH6qE17bB3\nMymlSywT5iDCyCNhp393uZivpsXZuz5iodC5ykArgufmOzVY8KSZguI+Z82CEby1\nGdwjmAFtVa/CahW/MRecLd+i4dNWpUDvksxiaRCkbyhXx96FYwytRoEpE82dTf8+\nfh+YVyh7W1voi5E1d+uyldE0l71PdT6WhDlFXLsdBrzIO8VjF4eqXLUUsaFFztJx\nNhJspkMpbB6DXWs2zhhsEY26W56QEb11hA5Zkd8os2HcVc1M60o7ws0toHkpAdNm\nXZsuax0HAgMBAAECggEAObEHZ2jugvxd+awp3Tv9KoMUR9NDy2ANb4x8qn9R3uUO\nG+w7VOOeFTp+vwD+CqgZPo/CWlmLjLAK8if9BtYn8k9TiqJ/H1uZ1QNeQQ7Docul\nduqLcHOEZeI/GUuoa9kjYzkp2t9y2DAGvWgGssl0+Y6XjrvPtL/f9kuP+LVXRt3y\n0gdgwI2EEGhvl7VDrYpyijpbLyD923L9Jaw5B1Zy+mXxmiiaaX1T2QkCQ4VL6R+K\nCzCvapY4eM8hSeTKlZEgDOyc7UKILbVUaz6aFCEzuIwCxoVJEEfi3sc3zOIPkfvF\ndVu87qT4hlNkkSK9nRKQ/MMnzvZEuV+xnfyOacq2WQKBgQDT0VfEcyhhKq2EZ4/A\noAfZev5E5OoYHR8uwKp6F1f5XHhhEyipYFJHUFPcl/guYIk39QePXlMsQDyVU+b+\ntfA0m/2jA7uPsoQSnX7/FTbC28lbPfgcXoyCrZ0Jow+qKzVWIlF6EqAEgW4QFXVW\nJF6iB57f8pYBNok/153W5eM0KwKBgQDPE9Vxe0kftHOrejQcJXw9IXNFPWXBj4hm\n++oBUc9Tfd1+FiEcCUML/QpQQPrvRmZwJTVPbzngLHtV55kcuotpNqpozwP/FJ1K\nCPmpZ24cXP+o/RL968ULzMsBrr/yuRGiuITK2A01F3QncEWDbEBAf4ufJ4D9A+Ea\nEE6yy+lAlQKBgCgoc1RaZNhvJ/CHVdi2Pma8C8LyB3PE6amKe4ekL1imcGgvIrFi\nApdkolGbOkFIqhtCyEklH+2uzA2fl5bI1Z6TyHWEeqXWuXVyCKbB1d0BoF49FHIE\ndu07jx9Jm+muQXFwFjRnnZDdHQnNl65aPNrJSRS6QDhAp6rD7TfV48p7AoGABULK\nvGxWakDKY4PiSQjGxELSS+MIb8d2vq8NveTXMJbVBrwHMVAm7OoL1gggl+2g8p5v\nYUpBHSnkJEWTBUDUA+NIpwsDXfqnGFdsCFrBWGUgdamgTuUrh2Y3jh5jcAY1pX2s\nmf6tLzkeUVYv3evlIf5bjLqTM1pi4KejaDV4ApUCgYEAhwvzij3QUiXOJG3Mcedx\n4Ahhsqlv9SWzPciXSPhTeHOWE0OKemvv6g2DgTZSsubyrhvr+YKzF2FvA5aKcYad\nshQ/tLZ/0EqWtm8295xCMx198x9cXvFTVp0p5SzGkAkYBsUoyjlJehjQq+yY0gCv\n0aYMa73Gy9nM1oC8C3uSFQE=\n-----END PRIVATE KEY-----\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(6, 'asdasd', 'a8f5f167f44f4964e6c998dee827110c', 1),
(7, 'superadmin', 'a8f5f167f44f4964e6c998dee827110c', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_nasabah`
--
ALTER TABLE `tb_nasabah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_log` (`user_log`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_nasabah`
--
ALTER TABLE `tb_nasabah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
