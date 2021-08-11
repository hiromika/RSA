-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 01:02 AM
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
-- Table structure for table `tb_msg`
--

CREATE TABLE `tb_msg` (
  `idm` int(11) NOT NULL,
  `id_send` int(11) NOT NULL,
  `id_recive` int(11) NOT NULL,
  `subject` text NOT NULL,
  `msg` text NOT NULL,
  `private_key` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_msg`
--

INSERT INTO `tb_msg` (`idm`, `id_send`, `id_recive`, `subject`, `msg`, `private_key`, `status`, `date`) VALUES
(1, 10, 7, 'test', 'vavpOE/79RPzT/1fvYWcuUzmsBSxwfRiHpbh7uwx2ypxhryKU/pWxk8fruDYvktyKiP0vdEDlBL1P8R0IeINXUGpQxGUTj6De3prmESsdpIc01RnbeV9A33KnJNTBBQcGN8ulxvHi3X3YPVQovauMk1+gyYrr2pkinZNxwtKhjMyt3Gy1vkRhTZX34ghU3q0WAqlgBeK/sx4ktLn5waKcKd26NKkX/2tC3Hu0DOx5f/6DDiIn625uOXj6ttchP5RB8YfaBrB4seQoic7b6YoK5UbUQuwPOjNlhkSK+LAf6+mtsCWyVcwFbJqD3c3zh9Yy39t5Eqv+yabL4ybzyZhdg==', '-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDNvelCZct82Wwz\niTEX7ZK7b8MlSrMXH4a4bwF3byA4/iGR7ngLBGTuHU7QCNRcVeHnAAbeFOu8hN8v\nz7sp0SSCvMHsf8tdtkmsoCMa3vTIKVRnMPC/1UIZh3BXYZcZ+pJowkmw3fUBFtJY\nDRT+9u8DvbxnHjUreeaMLOdnSN4NptKkglA6spgKVCBLQMnAT1a2qeLg/bDjsmdo\n4MmWEJzQdpzs7zolB8VrwW9UpVpWVUNHq+obJPqfMASxd5YSkYHRzLdfDaKR7I81\nnoZb8A/9OOiFeZQJcGyUcZhrK3SabUIG9lrSmLrPB8NoKaHrEKYulvsflzNB8rjf\n0hGkuir3AgMBAAECggEBAJuMFSqJ44qEpvVfp6o7h1AGczdifnvg7e3KnwU5EteD\n6sV10XQi4lvT9J37zvHwTFZlAswsbP2eR07ScuJuqHffVY4EIDC9fH3ypBfQsKgT\n9yf9LEccaFj8uMaXlbGia8af/S6m4HDuXCEN4u3Qq2vcqvAbOn+gLdmUqW7A/IC8\nX9lsDiwt68QKH5r/Y5WFOneB5Wc9nHztOO5hf/FqLfgZ8nWYJUZwQ1RlnTbIBxPG\nr5mYZej3oBNu2hVotGn7GZSB3yrT07Qgc/5Zq7d8FWVhDBM/VC0csQ1snAckYOdq\nWFDJmWztC1lrtD37FLSVLR0WAdWjcO6iNNoIyxkbb8ECgYEA8TDiKlrrmfCY5iNp\nat1SirRzEw9tnEJ+V8MLxhzek3sVdegUwrWG7BKTawk+mIgTM/fBIXflTNV5nkF5\nv/Sx5Yx/th4/icNz2zvNWZt+VlRbdoAJrVieUsRbMK3Zij0E8sL+g2xknGQMQt+5\nbvWTvQGr9owifcgrciyiDloyzI8CgYEA2l/TxplNjfkMHnTPTBiH8lzLgUIT/5Pn\n36QKzBzTDg3vSR8gzTXQctEavzlVCTXp60SM5ZsD8kMS2w8cmZHWanyBNgMOyqpd\noP09OyE/qmZjTANvfaORm/Dgj4ZC7opnLKHjk5QM7t8X86N0DMS0Wea877mZqyb4\njG23xHRDPxkCgYEArWiXAxrRj6FjXPuS3Gl54g3xOn/6L8HC8rhiK7Mv99sjx9zv\nqDo5YlvMr8U6wxH6tH9p1PVN4FsPkM/EiFWW3dKRM9A1oIftMW+iqc1ZHRqTk/Rk\ngMRZOGrCoZIs+O38M8oskTMKd0Kbai1ONk/MQ7UC/UUtuz+CtRkP/r+tDFMCgYAg\nZq+JfB2hvx4pNrO7WrhxIYugdil5dnylFjXz6yL1puOmOdQoHp/7KUOKs/sGDtXS\nbq1pNAL14zXdAvT/ZEAoNKkHVpTPRU/3HxwCtgA4TFDXansUbTyhoq/vG8C6nBaK\n7MpTj1gL6VYodEw3yMfpvu6xsxw15OZkD7OAlq+ToQKBgQCCn7iSkC43P4UK5nSb\nzLJF/boiPhkrH0REB8kBDyjpf4ckAtunsaAArK//cgLAkc4U+iV+RLKv7Rmp/7A+\n8lCU4ib2bMisJ5/ZE0EH3dEywq/HPULqYdpz8XEKt7hKchEN70wgKiqqlvLa2opZ\n9XsqMhxr1iipncjgw147qFeO4w==\n-----END PRIVATE KEY-----\n', 0, '2021-08-09 21:59:14'),
(2, 10, 7, 'domain expired', 'Xiq6rxohxWBvOVIgKepQazf5zTbpNsIgdbRWhV8YEiocj9ibwejlzI1xT5V9kjJfYSyzuedUnz6v/HLwUVSG85kldRfHDmNc+BGqC/YKuv7qa94v0RbkHcHJH8PuaNxzPd1XYLx05hTffYBx1UZ8FFP4Y/w+VOW7e2Xitem2kTKXNgwiiT7lSmzHldLbtpRJ3jDCqZn77kcE5oFqiXWbUtAqjjPS0KC6lVzu/4nG1PwGapFMrWz5a2RjN5u/XgZOtmWncp1ML+ZZWTalgZlykr+OCzSyutnojvVIlwzqXSS5tuIkrp+MnQJVyL2ok/GOOvoPBeh2lIMoWMrq73ASOA==', '-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCvwnghdTs34MBp\nlSbjExTbtFqsePX7cEjwZb3AID+BR++4SxfmuwY6SauurCo9uagmGYupDs30RYnX\nCYsg4dE5FhXq0cwpU5Tl8rM3HsTh4hFLidzFvfObSISDdU0jRUOW9cWgpsF18Vm1\nJ5D+S0pR3grhVUzbR9CnH7T7wR0JsWOTl5kNUl5epSGO83yTA5RQ9jzOZ37OnYjx\nzIuzojhBMaih4tCcF22WpPCz6MrRkAVlGjzBIM2oReljeq1zAckeefDVyaMVEX0R\noZcX6aDuy4zScg4F4SB1t5mn6G0qoJQS2nmtd6LLqrzr0gxFJxIFmGG05jSl2MFM\nMv1+KQuHAgMBAAECggEAC4uZupDp1+zSltzuVgI934TEZAn6Fo80q13zjfhQU5y3\nGYMNSeHFMfT+6xVyHOXiLsaEzxEi5EXhHRgKZJmQ1dAmlms7nwdXg5diwF8sDa58\n9lpS/0ZQB0ZHNh9xdrypCPSSC9CIasf03ZqAwsONWT1dt5mT19+qzB+gEt2Hm8hI\nWzE1oUYnvnSilzzKvV1JwlgNOM3DXwE7bj56cfBF0xaFnm4Y6i69ryoTqW4gVOab\nlwNKX07oepo5QO0qvFDNW0/ektqx3OutrE1FjPBDrAVlxkQ9KIv5QElcxZd54pt9\nBphcoKuRBuiVef5K/U6Lq5CBXu8yXR39pmOlkISpOQKBgQDflXGsGYyRmibzqSMK\ncNXSzV7UNxacEDLi3tZ+JHwWqY0f8nGrlbAOWGzCFedphoVXrL9UhWX7FIEGf0t+\n/pcbjhITEy4E+p5ittu7we91ta134nf0YZR8945HYIwDOnUOD0n9ISlHsIES4IzD\nOUMMEsVHOadx8AA52K8epoNDUwKBgQDJPfsPtgAiexbxqp+Bw4HzuZj7ARs8urGf\n+vFBNcnp+G6s5x5oQ51QvTFp0J+StSHXTyrWAE6MUV0RUz3FSmbkRAnMWmhvNS1Q\neDYyQyM5LjssNV9njf3rA76TsZyMitF0aDeDNNIH8dtxotzOGFjBfzZ5e0VX818s\nYvdL1VCkfQKBgQCc8hadLEIUYxU8rVm/ln1CQI90gEcKvgQ6ZRpD6fCBJ/u8lT9d\npvGy4DdX9nA/DwLDDKwx9IIlwbrgiLLCLox79zqQ0UHYlORhfuK35eblxeZC5WI2\n1diZ8FyblhYynfJVMD5Lxd9oR2oTijTFRYjfDL4WxU3ZGRPPh19GMLSrqQKBgQCr\ncoykU/BFcAyaEz0VdpUOKb71iXnFAWE25LoJTmQZWzgfQkAboA80rBqfBcgNWxfb\nsWzTKSvCS8c4bWyg2sRSEM0wNo3mwK08c03pAF3P510uSsJfHQ+I24XPmm+/JL1R\nqUAyHhwZ/KlyZMgtJXzoTRMB6E2pooQg8qexCalMmQKBgQC7vJoovLyHrYwtnlGR\npDCgj42c967BlVp+BDa7xTio4V4rgyIKvDn2vS1ejdpEgH1wvIuWywN0C/Q3H1UJ\njyeFj7LQwGXTQX8QdwPfsXf3xWKPxOYYklhyIWqeeHCRsI7MmgBV4PvNktu7CxLJ\nu5zbFsDJh9OG2MCdY8X6cOgPJg==\n-----END PRIVATE KEY-----\n', 0, '2021-08-09 22:41:37'),
(3, 10, 7, 'sdsss', 'NidxJJcbV+6+gq0N4xPDhz7HzUkNXPmIZhULynQxCruvL4LDvpzuS0IK+GvJCAZZX7FK0acoCQSGaXAAH+QdJuFQ6bUWLtbA2qiaupRcDWhnneQWRh+EaoWFDQk3QkDpRUu5qr85gtutnkdiWGhcyRcEwMg8UhiQxvj4jZu5R8BHJ6IAS8TJIFUprzS+iuPYL3jdkXR3oezrjvk05Mg0bIloXnRnUHVyz0QOHheDdW9xKI3VIJXHwl9XG2G4nZ6tjNnatmJ5hlOKX5CAVQbL9aMNc0HXa7rQkZysle/YRCsZW54f3kjP4Q+FSgQ+OjcYRnpXiGaDRyNw6QGqswmLvQ==', '-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDj4v4p60gcS2f1\nZvFJmbHqbzwB3UzYks6yv6nhA3JGYKsMrm3JJfviHaoEu5PRDANqlHHkotgsDTTQ\nzSVwXq6wnorl09VK1PkOETsL3yE7Tsr4k4nKY9zCrHaks3VtetVSFref6gp0EeCK\nVcdC+W8kYQI0erPZmu6yAlZzaCNogcEzQHm9L0UJdquoIY5EdPnxEaXHKzMPgPOa\n+fydgCrMEgT+54i5BxPJJkl2f5t70I0Cn4FfgZHAfywzVznw3trDUWYc+SU5ZrMy\n4IHXLZz3LtfvPz2a2wY8SpZSCcnloA7lrfnMNwwhXTndSu7aXuHzOQnSgks5AgO0\naLiVVcGnAgMBAAECggEAGw9LKuMbTvDNSWCN6jVr4PCQaZBDnbvg+2yy2Vs1aJH1\n/a2Ar8/o1vK6y5ESflI03aT+2S1VCfYPfXO+rFcx2xsYVy4ON7KOWFNHdaNrKMW0\naEvsorG09xDPjcMZgISDbBnyd/SshRfSV9rTrGo9/k3emyiuznoNOen5Jf8JpVD5\nossCYtxC9weAnJ4hZaIkgxT32NStgldofr3fklfskHfLNIGCfjEHts3ddBZIAmqr\nY+yYU1YBxaguUK/B62y3ClspyUBG7q21DdBHB5zJ3BbMBLVW+bWiE3zgvr1M2yKL\nDlxAzGri6RWXiT7a5TwB0wYIHWboA30L9ORkIGq10QKBgQD46+VSyKDnUeVrqpGS\nBv0R8bl4Edf3vAs0e9Zvti7eeXhpQSCmpavFwYzilHivr1T3WqqszDZO7WckZyH2\nTF5Hy4V/zXceXIEqfuXdx0fOk/y+bqCkB47dn1TTg3w5/YXGi2uGs/0aTduLUnqP\nmal6V9o01y3oHlXHZfT5zmI/XQKBgQDqXfezS7XY+Gx7ys/NzFHfiSG8v6MorFDg\nA1y2znbm22/45OZuSj5b6tyRYv1gwWg/cqols0IlKb6eb05gjXQwkojaIBG2XeU2\nvawwI4KKyhL531EKYCgLoJzu1bkQhHI9y8ZkVcDGu5tzwvz5mZCoUCyHXWSoPU+N\nO9JBi/ko0wKBgQDDa5cG7eF8mUvuweM07G2jt80u2Xtez29QjeRkoXecS2rf3zR+\nAFShlXlArOUusAyZgMG7lTsRrcmqx5jfH0dpP/uXwTvCR0dUkHlwKrJSGNZ0vq84\n94IOtbbHs1NEx6dNn0kUYJvVGcjBUUhNEor+NJhnoYM11xLqzz2LHJ7/NQKBgHZu\n8eNbGRQBxeBwxr46yAzsIW5ecTb2jRAG4u1GPHPA5D6kfYWyYvzUHI4jteMVGXcm\nnLDce0qIY9lwae0EznhVNG710b2UiWY2RzM0Xp2ALEK1BSD3IoVtrqBKxHCCXbC4\nrxK4+ufymkXPfUMsxRspGLd3DIywHulCF6gj8c8dAoGAUbrsemUZEfFqEHlTPJAo\nYK0yDYctG1BBI00BeChqpj0KrZxtvo9gMpS9FhKYbXKKSel+DJHl3PtM6tjPKKJY\n40I/tHq7rCF5HTFVJwdjBgAzPF/vJnYa1BSPka6ViEC+jWhn5tG8VuSPOlBckMQ1\nzzdB5BUHxeqXdWUh/mV47bI=\n-----END PRIVATE KEY-----\n', 0, '2021-08-09 22:44:47'),
(6, 7, 10, 'domain expired', 'IIYLbQ3M4sRE1EdNPIS9n2G1LZonmZd9K95Mxmprk5wDRAINl57ARdw+vgnZZXbNFytmN7ZEPq5/mhXxSKK3hBSsS491IvUpOBrGZA3QPnzeRXQbpMwHVbHSiY2sXGqPSM7ywDqtIQjhP3E782uusLKBaFfxJPJ/v34tbd0f0VF/UuQr6WIfj3XSdMsD/orJjXlSjcKkESoibOQ9pJ++DSjEZbB72o/xuB/nELAwCEDEtFBU9L2acx89HsnH2xQKGrwu+0NGjlqSyKK7yLb69rrjuzG+NXcB3WFsupMouOyt3nEZbrR8UMy9nmw9UV6O5K6XW+9DEtrugVp/s7eLmw==', '-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDr8Ac/+C4e/VPy\nbbf5ibh0/UGnWESzeolOiNPJqrdxKZOPLuQjJQElD6EBgaU3l441dsSMusNq39gs\n+yhpMgG+/9ywmoKHOviIQj0c+sZBWkmP4yq1+4HKEf9y6w/hyqj0IIRCa7ubfOey\nzYJhv5x5sCMEbRwXaUt5LR/WWLB9zGF+TXrc10vKgUlOhJuN3I6GFRdjHVDxDAp4\nVTw4SIjd5aM26QPMrCQZBE8MfK551m0MTUocHjK6AhfSthOz526XKXtg8rxA2YI0\nlRnwibpIskfOgy2X78MJBobJsyoCikPbPsN0iIuqTiyd7CGTCES2CW8C0TmgmhSu\nlkqEgc15AgMBAAECggEBAISeiRS2Bga5UsSEU9NaTGrGKG9OOF/CUwfn9VP4N+DO\nA/mJ3Aa9OCWC4XedTicvc2ot9lE8cbfTVwoBqzdmOoEIBR7n2tL0nNrKkNuHQoVd\noNfWUx2z38Kb10DbTDQY3FtNI8rKD8xYq0xgJBeZwvTLwwMr6YxnTVsxuCGd/KbY\ndOnFrLBu6PazkuqXWPRsczS3p37oBctY/oDvCcF3fturk8dOOv9YyGAufdLyZi3I\npBMtGLstRHd+AkPMIPw8tTrLD2Fn5VCjuf2bJe4lA0d0V/+IzMadVL1TJwXmR4jK\n1sOii6LS1Iga3gKbVjulCd89T+knxU2yHt5NfAc+ZeECgYEA+alOUsbdknxKf0Kn\n/HhVK4bwSD8mbX4iyJaE5oNG2/PCc+ek4Gk27VbDV9bpAtn+BrztlKFfCT//izX3\nSKiKDHvKod/Pt0NxykaTxGtashmMNX24dLfHcmzAb43baKcRajonZbxg14WcSuuK\nG66rkLvEIJI+qSyTgZlA/U1vrF0CgYEA8e2GGITANxrzsGNhSZ9k5InKiSD+UcRk\nyjqPZTNZ0ZXMElawIQPH4p+SDPNjxIeSj0jgAiSMC4wk+l8hMMCiNpf01EZ5turN\nLK7wXfKhHc6qp6v5xF+4C7XHVQ/NfPRTyQ8I44M2NFouYqN88F67NB8ivwsvC+Qm\ngoNd3/PTc80CgYEAmZQvzTXuOV1iCnT7l5CCfBsvFpJaVkKgrRoCuTaKUWXa+afG\nwhGXK1sTIabfgdSNsqFn2OWH683FqmJRMw4SlelU1k0ynv7LMe5Gmi6cBTE4EfO7\nk3k2JMqHelgeX3teeCU79RZz0ECty1ynga3qdkc7N/oet7znJHMdCnUnPDUCgYEA\nrHzTLMwJV8Cpmktg4+L3RlJPyzFw4c+KpPzXnCnekiWhWDniXceaTiPDN+SYb1jR\nz8L/o8d26gzDmJcWzPGrNg1li6urwBTssD0SN4l0AhKFbgKZk79DM2YpdqZLthll\nW2aSydOVZAIgLEewHpkME/9XAKryoiHKqycKWVA4pMkCgYB+/Y5p0VBZj2xwAvG/\nBGal+bHiNGudt5Wy+5aP5BoY/GSIILccZ3Y5bE3dSwyVyXY1W5mrSSFtj3WzMFOb\nc85c4r7ZhM9nc8tLL99Tc32q7uGR7ALYg+50DxKX9Zk0c13cCTLIUNTy83xod1SI\nvT465Yn1DwcYjT6GTIv4GAL90w==\n-----END PRIVATE KEY-----\n', 0, '2021-08-11 11:33:00'),
(7, 7, 10, 'domain expired', 'kUwzohAz3po7gA96bba2kEfnqZFp5MppjlVu1gjsi8Si62bffvxpCbMOfbLvTQIP9jEa8+9sY1f9SatOuLr+iEgL4FKtf9mvDMJKhM2mrpVFbIiHrYxWMuOs2e1v1ZT9wCQz4CYuVJ8RtUQkxMicgW7NNacjafdeOtKK7svJuK060IwxbRitANALwOZ20wSi+7DBh/cruLuXMeQmt4ZwE+qxlDwIXpHpASsfX82a6Wp2MMGjadEokt2bbH8SqxO4AoYBnEktQn9hcqNVNPvst+6FUIrskcV/L8U8xdoRrNzOmEiIqnI9+5qZj2y6UQOclXGzxZ/amhdDSSyIV9QXcA==', '-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCuHlvpuNpRXzEL\nqkLCGBXwB5EUZuuMtMGx7uaeaI7nzkdgSPHBNJ6DE+6sP0EiRV1gGuCAo0gHGzT3\nPCt66xYmJ103pac/4R3D2ofxILkAHrxc0DQKVL8zqedpQgBBVUrlflljbS8jT1X9\n6WO3PnVGK5YZ6beOz9B/dJpyTv5nO4LkuUJEKERXwcUgGkh4UmQ/6MImnC1XC0tE\n3NvFjoXm5COQo1i+qTytoDxXUcFCyNF3xeYth7YSgyXVs79n5yTMwF1Pb9b+dBKE\n5BbVi9kJrmpkiQio1bbGIOcZUXRfhiPRfC02kmnO8wjFyBku5XQS5kR/F1ElO80y\nIKwVGEXzAgMBAAECggEBAKQDyQTishRQnPymB3iaA6A1IH6dbGkApCyeI/M3/tVw\nxF94lvIuRNqoXf03IH3N5WVwK+ZA6Mp44G276iFBbX3HOtH+YwuTXNxu7/s9ncb1\nLO4o2byZk/pwo6HNIDxqwcBoQn+cC/kw9InX3axxUzskN6J1PAl0zKwjBJGEw7Qt\nFizF21V+YhvRrGoAkfQztvFw1h05rOiwWbYkYgkm+1vzP1YWOvRsPNYLJBzMQj4E\nYZrQNvIHIVe/BUckar9JRat5p0dwApnMY2qEyTYL7vwwJpCjtwqyeqKPa1FkxOtO\n1b+Eqsk/MkFj8+8AAjk/Wl7md7V+s6LBVwfC2Cn2hqECgYEA4jvoDWNK8VPQgbTO\nMK7Q10LK2HoK/g2MpRWaPSlcVxBhA3DyYX6I5bh1X4+jViXbPyxJNsXFfnSs9EsH\noxKEOK8iteoLKOPPlC35PjoIxkITHk8RNnzP/qzglEYsweqElHUinRUW07fYKAT6\noxlNUoYfojB9Es3OFSej5TcFFdkCgYEAxQcVKgyweVCLIEngyBcccCncqyPFyE/I\nzQ4NVQfkop8mTDLxT9lL96M8DfQK4UV9Wgi7c9beSzo2Pw0mM7CO8weMm3k8EOHX\n81ewFjWPzuEOHH/7cUaMIxUWbs3eRCJ3/0gz7vgQedTUYF8vxOKoDFNORiou88Rt\njc4eVD71XqsCgYEAo6DiqPQ9Gykc8QN98rYuNNOJdWNoGfJg3HIwebY1pH8jO+Lw\nXFWx3D07H5/7am69EgcM+UG4I0tuYM73uhnFal45w8uAwNVsqOdLk5dUC1l1DIHx\nmDBUHAab9IKBEsx1kg7atzSuqvkYrXFUeqztQRfjP2LEw9n5CVH/d+UAl5kCgYAL\nKBaDtgo8JFpsbqKC0gQzObucGT9200W8jsIkgXjp2Hczs2LEsbpCgITDCYGgNe4e\nLgZnTdBylA5ETbtPC/1cN543o4rKLe+rgNiguVG2VjoVVQ3o4STIS8ZkadXfJ9CB\nrRX7vyI3s9x+xIUQ8gCwCfuRr4vPE91cPUKsZJBCVwKBgGzr+Pk8VUKnxi8azJKj\nGNhMCT5Hi9zDbK3VV9jue8tZGUEzUVQzgWzIWC9w/RkaN8o4ThVTJfoQeDztUkUY\neVT3Sx6/F9zD2KqsL2U0/wdLOdRmNrHmaLFDDYWHAQC0i8gkIqRZ7/8KxNn9VYEn\nJ60XFeW0E9kLwZ3V97K16KJN\n-----END PRIVATE KEY-----\n', 0, '2021-08-11 11:33:11'),
(8, 7, 10, 'sd', 'ke3RQ+013vBN121ZmH/XIPWmASWpLWysMgiRQcAO252X6t2ihDGq0G17MRM4pOc58mn2VDqdcX3NZ6mwENyZhM+RZROdcsr42J5EWepumCkUeCNj79mv82pWNNgkNl4si2QEcUgBLCdTjaZZna8IxiCYNevLwkNpalK1BE7/QmUEETaBe9LmDOI4fFFt5vCSgeRP3v4BPcW4avYnWshDVltUv8gVgTaE4xrFKh5JP1wVcIkOLdp5V1ov11kKN7eTzrKwTQpFpD4kr2S8+U2ebKuEfw+z0NUJtLj2qbmHMF9TFoNYOwYgZCPs6JlzM+nFCWPwwvhFMp1QxRv++QRnXA==', '-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCwoJrIXoKZjQwt\nkZY5fHkUZczJTSHRFiMI8GKetIWpiWwPej+3gdLvM2NUjGnBg+3rLYfH2/yOoGr9\nD53J4HMt4qsPSixiiWwlmuxkkZrBVqfoTU+Fs5hPShJE8QqpYOwsdPAJyePIWpdG\nf1np0G+QkSQx3x+wz1nYHjL6KwRmsxQpYS8A7N/3zjcQerq96vmOEXELhpDfYv8D\nOVIKNSJB+B8NMB/8wIDCYPr1ur2dh7kQJIDIkBeK1c47HOprnAor/qTKTbHwh1vq\nEgoh6ll+gPr48GC7NsvtvDVt+zNd2k83YSP4NMWvsax+svmIoYgYbmcop3jsZ+P2\nE44WfZ9jAgMBAAECggEBAKNhjIu30LrU2+Ty/LDkUOPrXsj+Tj+oaHQGWFNRzSoL\n8idG/9Vxg3q8YC9/Svw0W0nl7emTtkUAYrb/UQfCVQim2XDlPbVQRPdsHSrR/QLG\nc77QdLTKciM18zxOc3xGKXDeIoQLemaEVdZiSvubUPe7Km3vZNMampLtLF54mDOd\n/ZwfUG49Y2N9Lnq0UAgXCTb79qTGjYzvgeR0fGHn4reKz+kOusI2jdvZzE8CwGhW\nte/NvWl7oRLXPiACZgQ/J47z2Apy4LqTj4gl+W1Ijb5MzwK4Qnz80GobfzDYmF0/\nD1jk4YF/GpycViAbLyDpO6mJiijErTRl2eYaIzk4NIECgYEA2JayPTgudn67kQzu\nQams7iG3bHJzTFyQVYEIksMMtT4BuNmsYamccAlVcBlaHi/Mk3ySJqnrEhOi2uIu\noWi25BOGWPx3PzGOL4vKancImannAkpKwKBdcaTYAMcpNxuV8bG5xjO++M4C+y61\ncASdHaseZRgspYOG36ZGmvAWMeECgYEA0MRmV5u8rHphKRwWvFbs/Cc3zBeyoTBP\nxj/sWYeuul1FKI5YpTp3GHDI0fIPzJM+EnP6NoyjVpor8egEWHBjwqM8kDjZq2cP\nXCOKng64Lu5b1rcc25mhrj2GFsCMCEciXlmXV8tvDTstpX6090BUzNv7Hu5FVrys\nbHlE6p9bwcMCgYA/teRsWbBhLtphypnzOsQhsE1SW0BLQBc8753j/fgpADplc7Jf\ncBMSacx2Ex8NLiZRZB1hvi3lvVz0YgAxfqn94ThtyKYTMrKOjeJW+vjOqsnHRK9E\nhme2XDUl1W/sQ/MRi6QIB4Svj3oVBSJd9x14crOYLUpEzbHI7BJs1R7SQQKBgQDN\nE0DdapTKcWUkNv12gYVGpVfAWr8UbBrRSlXoFMrlM14OWtZlaKs5DQGYispOUY22\nHst57mk9VzE37ozmO3Ej76o8mjvojdKe1iMC5L61C1yX7UShy6bxPGqNyxNDxmzS\ndfufOK2cN7e9TFyETWN/4dArMDBY5foSjIXQXD6MdQKBgQDMga688pYq3hM2Poy3\nXyctugNptmPWy4FOeAOctVS+/A976Ou10oBLIVfb9N7CB5M7kvnZztEU50nrTNLX\nKd3ZxP45nRMGAUD9dcJaVmDgkvyGwHRvVfuTLJtVTSCeqDKb5l3DXoFflBFPbMb+\nZxtytxl6FGnI3J7OTlA58nATlw==\n-----END PRIVATE KEY-----\n', 0, '2021-08-11 21:26:22'),
(9, 1, 12, 'domain expired', 'bW/jilneN/d/xveEQSY3s4etICk9ZbZgmsifjz6xBAmF3msZdHYcKbWnKTR5Pfqm4WR+6MxLB4EKLNethTMJsaYJJXDG6cz4YBHL2LJaDWmaCZw9ydX8zl393o66M6e/hzx2p0c2b1tJ5WMAww1E7PI+jBXb8hGDBtnoHZQRencRJC8YYjG6b0SO+V/u9prGk9SRah+vZfzD6Y6guLkErOpZUtM9ohYnJzm4bk+cHbVaqRri5uUgJSCduJbM27Wj5x6d7UIUmawrEG7KzB+XiaXTqNSOztDKj04viwfiT+jnaHf6SwLZFiR7PLD+UnagbOlknudNBFDsrUrMrttTBQ==', '-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC/BdqMKssgIYqR\ngpn1Q8/pUsVcoj/QWiPYKvy+dPuW3nW6LeMeZTKYkJmmROKL56mQ18zdgzD2NSqn\n5uXh6pFsmOL5fofGNyRj+BQWlQy8SPN3BkwDVnzvgTL+N5l7jcNSfLhsxS2QlUKp\nm7TTNW7Di3cNDk2wBOiNCjt1tx57WKN1yHIPXmv8m34IpElPWBZa+SOkaXvLApai\ncCXog/yjFDfumTlTfoS2WCzfZBl4SjLSeQGzGmw9H4BCnWIp4CQpVey2yiZ0MA8p\nuYMC5tq4axfoyOvWjuXKK5MmX2sr2kawk7N3MQRE+PDOnqtT3gW/131n+BeUzS5Y\nr0sro6v5AgMBAAECggEAM8q5g7GCm3acpHE9nwNA1ukrO799/9bAyzZ0iosbP7+X\nOeCBKNeVTUo/bpZUukwYbH4mPJT6bHbj1txCzesUfNZDDBRjabm/sx8rCyhkaJR6\n9nWNnIYRn7pvAgA/LAG2yKGqO0uG3CGsDmJ6N53QJ1Kj97U+GRBroPn6PyNkL1rT\nZ3Jr8Pa7j68gUOSSHFkXW8ZiskLSqKeishQH6SjnkLBzmApgV1ED+PcAT562EtsO\nf+maZGgASGSURa9XnN1MhDTo2KddHtp26TSh+59XmWuffLMglYySwarUK+RL0XUO\nQJdczDbux7uDCYttqJ76bTO7Nsq98bAY0jS9fdtgAQKBgQD3FZbsPFx8hDMCZAWz\njgcU52tOgRY0u0wzh2B0rlyjeWVkV6h6TwD4K7AsiwkFhbwCfcZh2sItDhxdv8BK\n3+gZcNT0bWqHT94x5pTVNPEMFmrsFWV8OwjOyB/vbJMe4BMo44unOXwKHxhdWi1G\nZqevoc4NcY1Dxff+mKMe53pUAQKBgQDF6mdFJSlf4g9cTqsTbffm4vfKRAWf2HT5\nSiIegJtuLJt5Q6rwLdVtn85oHAJdAx8plrlczwSEY8XozpBtKrE9Zc0ChZ78xUSD\nJomOCH3Zr73qCcfkhqGWsdyH1m7BvxC5/laPnHdmtduUfclVE/ytrmEkUVOqHzlP\nAl6sIpv3+QKBgEl91W8coRG0LIvofj2i3/5auvMVuColD4xAFvN9rTY+dGb9H7KJ\nbythqzwEesF2vq4rBOe0Lo9CJDPKRgK/SITQp7awGMB4hAlpoRktbwj+Xf0sfAwQ\nbxU6Ny16qOPFGE3QKIirs3Y7O38AxHitLfEyelxLSw4+gv3qHpKhnSQBAoGBAI2a\neqzkO8gYi/j1aD2MjrQpbDTRmlyVmIvMWMEOLycSz2Jh4enaQTwf/KRMdfxqgV9W\nMeWPUKIQaMd7E6anxwwwzA+j3u7njW9woTZ4KOMZdH4A5X5CPVb+htTBvZjtxV/t\n86zovB1GvIZvwR8YH898VpCPh5bOpEg9X9M1J/axAoGADuyfuboPz+F7szhZRGO1\nbfFSDiWdNdSfuQKgBg1v7N4+k/jsRLPtj+H9wuxDaQEXupWwhAw8FpWIg5ChRpUU\nlmuh93CS2gTzXgAq1hZpZYx0LcgN7X3caUQFJJjv1Z22fZEy7QD9BJvL52dP3UEF\nV/eox1zZeMjQisyzlPnh3F4=\n-----END PRIVATE KEY-----\n', 0, '2021-08-11 21:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nasabah`
--

CREATE TABLE `tb_nasabah` (
  `id` int(11) NOT NULL,
  `user_log` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_nik` text NOT NULL,
  `file_path` text NOT NULL,
  `private_key` text NOT NULL,
  `status_en` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_nasabah`
--

INSERT INTO `tb_nasabah` (`id`, `user_log`, `user_id`, `user_nik`, `file_path`, `private_key`, `status_en`) VALUES
(15, 7, 10, 'lz8EvyXbaHGygHm3RzzO4ToAcg5BUYNmeCoR0e+1GKrr/p6gQ1SRay+zZnywNmtxIVV9Z8UUaTG2DoeAhfEZhm12mlZypIQTZIHFvwCg9Ic9VY6MOhgxY0zYkh/yCLapp97P7vqAebbJG0PMWcLp7kDx15kdhoK/6xdWEtouRhVusrghyOqqtUMq4MXJNz/YuRscu5Q8QuGL37GgJ9BT8piP4doWyHxMsUSD8XVoe7H/R43LB+2rnwcvlzegCTRmNYt3HTTbGf6c7SBQAdlK8hW2nBIPAb7HcvPiIMuCsavXEgLSpFGT7aXoRb4aS09hYM31dGzqgoITDFHSnuQNJQ==', 'file_data/60e8f0270ae1e-1625878567.pdf', '-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCtVl/jUy4FesOG\nKv5Jj7QufeOheccU6oYNl3+yPoqDHpXER5lzrEvmMSa5D9gfy2PLUCzpdcmx2zqA\nXCM/aJTsHAzWgocBZVLooUmp4Kw9NARA2hpuQwwpKZNY3VhhoaeWyVqtck6I7Kze\n5O6JemJnu7VSLvpsFBd0IzajH1bqf/ouhOW1P6DCOwoiRffYZPKvlB5xrWAxGYER\n5FyzFZe95AyjR99aJvYXuHNegtYBDPBBYwlvgyo7+RkSy8LUVcYJq20myiOavzoS\nZrbFramF2PBSZg/y4N3oPuATBWbxlHaAinfTGmuR6L3Jn5k7uHv9/vUYE9ZjYci8\nNxQLAt0bAgMBAAECggEAEci+5c/u9Nj3nphipqF71xlLdZHM/zRgtJxKmbsY8wL8\nUrsV32xaDTAVzP73KavwfTeoo/tVyk233tuVMjhEr0ThfFDAEUCYFQ4XRLqscUsY\n9J5r/8wZP0/oskFjhADV9P6Lsyf7Lsk5o1TRtIE9/26e1+PCBby5+0xxmqLog/6a\nFLp7YXtRDoU0myAlPNbRv+vxm/BWGTBvjrB0k9vfJvz+yKrvOnMusAs8i7b+94PP\nEeBxVczBlmmCNTvhegRPY3OL8VEQewYcTLP+gkVApmpVS4YWxKco4jP/ASqRRvMG\nJcxD4ThYUmsFfw0rmpJJVNPG3uZwJziAKsoao4guIQKBgQDhmkNJexDRynk7cpxw\nxTM0DYAC4aFwGHRXVTHIi6a+8v2rNqF+3VSt1fPnzAK3G+XsnIbVkafdno52t8tY\nsSoc06aY67BrSC3xn61cG2H8e6Q02wBbI5fJ2r2oHlvHl6mOmScey7+G0JD60hX5\nEc1MYoUxbGF8LWJqWlN6Ipuk7QKBgQDEsVKCpNXtNCFTn32nea77I+ruVkEpc55I\nE4CnyZrleeA4sxhLRDrcxPf/M1YjhUGRDrhxw25IYefLEJq72FP2412jKReE/1F/\nxlH6oter/InfpAqzo6gzhmPH02dIfO7S20PpfuT2UNNFtJSkSRD1KV42F1DsMbVg\n/5NKMp0RJwKBgQDMR9Ir5ErLnIqAIPy1RGtj8+F5OnPjO9GFDvjAPmwjtYWrFhHP\n/Xxi2Dw+JUZEJffhc67IDlcxXxRjPXPdALdAWQoeqDQcQMSRaOQiZg0pAZAj6DZ/\nUFBukCpx4+N5bMQ1AkshIJ9x5MOSys7otIzwYLl4kkoHllTqNpYmHtZO1QKBgGBZ\nWEikxCIgwh57ZwrtwXhGHOPJHrxWZXd7Di+iwxybueksWb8s2gSg+7ZoCE74DKko\n49LeX5xXUTsYlCNmEaNDtu+gxmOgyeRkWm4C7NDTsRn6+j8K8O7kauZMuTA5+qcR\nP1AWl8PMzeE8Vv+uxv7A1+R5QWuh4e5040qaRnRLAoGBANJhe/VaXhmEWwv2Slgv\ngW/RCKzph4f3GiI0+gr5XGR6XO9rGlTQpOrGDhqeEREtOzgY4GPFWhKVRH+iQ7DW\ngL2hyPH9A+ZAvGoAJDYYfpexMOHzzjnSy9A0COYWl9wqxoHZHU79CQ6YUphhVOio\nU8sT/i2N62u5PxEwJJl5V7Z6\n-----END PRIVATE KEY-----\n', 1),
(17, 1, 12, 'c+yYyY1E6Q6fjNkzZORUuBW5YkLK3ON2sfD0cK3w62iFrJ2rLbAk1zB4y3Iu5A/mhX/12p6V5rKf6rUX9vEQiasqkDXzd4Wm2AN0qbLsly+HjTn/hcd17c9gYjxgzyjR07w7lWJbCNOeU7OSNv7QFiGvUAgjiRN1sL2REFiDsNjafLdL5Jlzsk5XMEzCK78OWzi2ZifgBjAdvMrWems7cx2Q1Oi72ZeVaXnshdrPS/VetRIqO/XBqVjphQYFKB67OjK//wz0BU5J1qIkHw2OXbrzvdyKKE1OxIETemYY4LX9kRi8716GpN+F/Txxpvr8lwpdlzmhrTIMlYkLQGFHPg==', 'file_data/6114435ba73c2-1628717915.pdf', '-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDXdiHhfslKsGfr\nOK8yUl0KbjxYn4xEGD5Hp0pjh6s8G8tMt101SN5H2BcsdyMLk+1pa9gvH5Bj1q87\nri4wYn+J28ORE9OsXnd1QjMO3V2Z8PWjGnbJex0ZaAKYqk+26bY4PMhVovp3tTzs\nm7dDEWKnWxkEm54IRkB5xmL1Hi4fU6hnkoy4u113fslKvHwilSFyxqmhvFAbKvnD\nyucSuSnfTFHfkUcTm4CySIdC9DDFx17skRHq2IUt6MdbGyg6yUmCS/GXDVVsINdA\nWwa9Tji45bJc9e4O7RFPZ1A5HawpUHwC8vAZ62jStvFAFTV+1HAZ7CnNiF3vW4fD\nHPuuRzA5AgMBAAECggEBAMtFWv+HgtZhCRlkd/zssXR2vZ4Kn+VaTd+B12+A/i6O\nNkWhNGFh5rs3Bd3gZAK3Q6NSqDkE+U8HqniOgmsJcjOYTq/fWbLjyKWql8rtUzI5\nnzSKcgjximl+s/xdqSjy4wO5bHNGeDBZnynGWqX+j+k9y6OKQRSjWo7IeHGyUGch\n5YsiHTaUHJzkofZhtef1PDNkb5hvvxeMhdCHhfqshV3S0H/0cYvxVROHn1eG+63I\nfx9o5wSGHJ40mbbaZr00g0QIFh2UXVs6giwPceIjwN9+yUyAGieD/z0AzcLwjJ6H\n7BgDVLWripv5bJf/2vTdjxRCRjJyLKaSzYbNMNCMngECgYEA8Zs+7VTeIwPEQpRS\nxjnFHa9dXX9UlQZiSqTyTaNKDFm7+SZIypOYJk0ekRLk4u60Ecrtvo3LjhwhUrtP\ndelsdncmtjhqkIUdfJqKBtjnq/U3r2RY9G1hht7IsoGpkOFcVODJOmMHpOiHf9Hu\nvJKHKtqkQD40NT254/4wl4jbQvkCgYEA5Ewl4KHpYTgWqg89SVcBhouRAA/5gXDT\n6EZrTC+humCPVLEhfl2kygwTNu1eQNtNVIKUCp0ta+lkapG+FZ2jD6H1vpT8TGRf\nxo3HTYkhRZKJwjepjiRw0b8tHFdKTm+fA6mXWaKIwcrw+2WLaJHF2mUynKog272P\n84hUPU0xZ0ECgYEAkZ6MUucv69K9W5OiQC9ZiwbDMzMne5qZa3v3PqwIWWFMVmKo\nxNAoiA07Ox00L0LH7WFt4cf8w+5Yd1DGF79UzCIMhw+ByxEwMIXEY1QgbhgiM+g7\nZTb37R4hwNU9qkDqMY46OqKtXMt5v6R8S9PU/BNDpCTZuq01eSEfkHXAEaECgYEA\nnLjhr8m26vSUKn53ticydujMy9wrjn6kGmptMknonoe3HY7TzWn/vGx5rFVbRO7H\nsWJKutaX3eLE+pu+gBxNWmf2ybSBVvf4/9dIoKOo4ZftVhTcIyZFBNhW4YPTEPFz\nmhIMQo5fj5n/wLU+9LRNvNWH3yCzmeYSMj6+ha6+YYECgYBy00tSvHdYEaKw4o1M\nBfb9VC6As6duoc6HEtvjhI0fskb9cmzaNnodVOBXSUOGOCJfBYv1jsI7+n5neymm\nujnJsWnn+NRhEyxYueXoVFPXt4nCpE+vgc++GEdwPtP5HGMBT2qAVahVipy4Rp40\n/ec/hMezlUB3Xx7AREhdyKgWSw==\n-----END PRIVATE KEY-----\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `kode_nasabah` varchar(20) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `kode_nasabah`, `username`, `password`, `email`, `level`) VALUES
(1, '', 'admin', '202cb962ac59075b964b07152d234b70', 'admin@gmail.com', 1),
(7, '', 'superadmin', '202cb962ac59075b964b07152d234b70', 'superadmin@gmail.com', 0),
(10, '123', 'testuser', '202cb962ac59075b964b07152d234b70', 'test@gmail.com', 2),
(12, '1233', 'Jellydoomslime', '202cb962ac59075b964b07152d234b70\r\n', 'sad@gmail.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_msg`
--
ALTER TABLE `tb_msg`
  ADD PRIMARY KEY (`idm`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_nasabah` (`kode_nasabah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_msg`
--
ALTER TABLE `tb_msg`
  MODIFY `idm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_nasabah`
--
ALTER TABLE `tb_nasabah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
