-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Sep 12, 2023 at 02:40 PM
-- Server version: 11.0.2-MariaDB-1:11.0.2+maria~ubu2204
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hitachidb`
--
CREATE DATABASE IF NOT EXISTS `hitachidb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hitachidb`;

-- --------------------------------------------------------

--
-- Table structure for table `alarm`
--

CREATE TABLE `alarm` (
  `id` int(11) NOT NULL,
  `priority` varchar(15) NOT NULL,
  `location` varchar(100) NOT NULL,
  `subsystem` varchar(100) NOT NULL,
  `affectedDevice` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `initialTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alarm`
--

INSERT INTO `alarm` (`id`, `priority`, `location`, `subsystem`, `affectedDevice`, `description`, `initialTime`) VALUES
(1, 'High', 'GMB03', 'TCS+', 'HRW-SH-M-SEC-ETV-CCT_EC01-RWS01', 'Test', '2023-05-29 21:26:08'),
(2, 'Medium', 'RWS01 SHELTER-FRW-RWS01-GROUND', 'TCS+', 'I-RWS-SH-M-SEC-ETV-CCT_EC01-RWS01', 'Camera tampering', '2023-05-29 14:38:44'),
(3, 'Medium', 'MIRFA DEPORT ADMINISTRATION BUILDING-OAM-B11-GROUND', 'TCS+', 'I-OAM-BF-M-SEC-ETV-CCT_EC04-B11', 'RTP packets lost', '2023-05-29 11:46:36'),
(4, 'Low', 'RWS01 SHELTER-FRW-RWS01-GROUND', 'TCS+', 'I-RWS-SH-M-SEC-ETV-CCT_EC01-RWS01', 'Camera tampering', '2023-05-29 04:11:56'),
(5, 'High', 'RWS01 SHELTER-FRW-RWS01-GROUND', 'TCS+', 'I-RWS-SH-M-SEC-ETV-CCT_EC01-RWS01', 'Fence intrusion', '2023-05-28 23:49:12'),
(6, 'Low', 'MIRFA DEPORT ADMINISTRATION BUILDING-OAM-B11-GROUND', 'TCS+', 'I-OAM-BF-M-SEC-ETV-CCT_EC04-B11', 'Test', '2023-05-28 17:43:51'),
(7, 'Medium', 'GMB03', 'TCS+', 'HRW-SH-M-SEC-ETV-CCT_EC01-RWS01', 'Test', '2023-05-28 16:45:23'),
(8, 'Low', 'GMB03', 'TCS+', 'HRW-SH-M-SEC-ETV-CCT_EC01-RWS01', 'Test', '2023-05-28 08:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`id`, `name`, `path`) VALUES
(1, '@Hitachi/header', '//localhost:8081/Hitachi-header.js'),
(2, 'sidebar', '//localhost:4200/main.js'),
(3, '@Hitachi/main-section-react-app', '//localhost:8082/Hitachi-main-section-react-app.js'),
(4, 'main-section-angular-app', '//localhost:4201/main.js'),
(5, '@Hitachi/alarms', '//localhost:8083/Hitachi-alarms.js'),
(7, '@Hitachi/layout-manager-app', '//localhost:8084/Hitachi-layout-manager-app.js'),
(8, 'map-app', '//localhost:4204/main.js'),
(9, 'weather-app', '//localhost:4203/main.js'),
(10, '@Hitachi/map-modal', '//localhost:8085/Hitachi-map-modal.js');

-- --------------------------------------------------------

--
-- Table structure for table `apps_in_pages`
--

CREATE TABLE `apps_in_pages` (
  `id` int(11) NOT NULL,
  `pageId` int(11) NOT NULL,
  `appId` int(11) NOT NULL,
  `appOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apps_in_pages`
--

INSERT INTO `apps_in_pages` (`id`, `pageId`, `appId`, `appOrder`) VALUES
(280, 6, 1, 0),
(281, 6, 2, 1),
(282, 6, 5, 2),
(283, 6, 9, 2),
(285, 6, 7, 3),
(286, 3, 1, 0),
(287, 3, 5, 2),
(288, 3, 2, 1),
(289, 3, 9, 2),
(291, 3, 4, 3),
(302, 4, 1, 0),
(303, 4, 5, 2),
(304, 4, 2, 1),
(305, 4, 9, 2),
(307, 4, 3, 3),
(308, 4, 4, 4),
(309, 5, 1, 0),
(310, 5, 5, 2),
(311, 5, 2, 1),
(312, 5, 9, 2),
(314, 5, 3, 3),
(315, 5, 4, 4),
(346, 25, 5, 2),
(347, 25, 9, 2),
(348, 25, 1, 0),
(349, 25, 2, 1),
(350, 25, 10, 2),
(351, 25, 8, 3),
(352, 41, 10, 0),
(353, 41, 8, 1),
(389, 2, 1, 0),
(390, 2, 9, 2),
(391, 2, 2, 1),
(392, 2, 5, 2),
(393, 2, 3, 3),
(415, 1, 1, 0),
(416, 1, 5, 2),
(417, 1, 9, 2),
(418, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `language` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `language`) VALUES
(2, 'AR'),
(1, 'EN'),
(3, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `layout`
--

CREATE TABLE `layout` (
  `id` int(11) NOT NULL,
  `layoutJson` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`layoutJson`)),
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `layout`
--

INSERT INTO `layout` (`id`, `layoutJson`, `image`) VALUES
(1, '{\n  \"layout\": {\n    \"type\": \"route\",\n    \"path\": \"$$$ PATH $$$\",\n    \"routes\": [\n      {\n        \"type\": \"div\",\n        \"attrs\": [\n          {\n            \"name\": \"id\",\n            \"value\": \"externalDiv_layout1\"\n          }\n        ],\n        \"routes\": [\n          {\n            \"type\": \"application\",\n            \"name\": \"$$$ APP 0 $$$\"\n          },\n          {\n            \"type\": \"application\",\n            \"name\": \"$$$ APP 1 $$$\"\n          },\n          {\n            \"type\": \"application\",\n            \"name\": \"$$$ APP 2 $$$\"\n          },\n          {\n            \"type\": \"application\",\n            \"name\": \"$$$ APP 2 $$$\"\n          }\n        ]\n      }\n    ]\n  },\n  \"cssStyle\": {\n    \"children\": {\n      \"#externalDiv_layout1 > div:nth-of-type(2) > :first-child > :first-child\": {\n        \"children\": {},\n        \"attributes\": {\n          \"margin-top\": \"60px\"\n        }\n      },\n      \"@media screen and (max-width: 851px)\": {\n        \"children\": {\n          \"#externalDiv_layout1 > div:nth-of-type(2) > :first-child > :first-child\": {\n            \"children\": {},\n            \"attributes\": {\n              \"margin-top\": \"50px\"\n            }\n          }\n        },\n        \"attributes\": {}\n      }\n    },\n    \"attributes\": {}\n  }\n}', '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'),
(2, '{\r\n  \"layout\": {\r\n    \"type\": \"route\",\r\n    \"path\": \"$$$ PATH $$$\",\r\n    \"routes\": [\r\n      {\r\n        \"type\": \"div\",\r\n        \"attrs\": [\r\n          {\r\n            \"name\": \"id\",\r\n            \"value\": \"externalDiv_layout2\"\r\n          }\r\n        ],\r\n        \"routes\": [\r\n          {\r\n            \"type\": \"application\",\r\n            \"name\": \"$$$ APP 0 $$$\"\r\n          },\r\n          {\r\n            \"type\": \"application\",\r\n            \"name\": \"$$$ APP 1 $$$\"\r\n          },\r\n          {\r\n            \"type\": \"application\",\r\n            \"name\": \"$$$ APP 2 $$$\"\r\n          },\r\n          {\r\n            \"type\": \"application\",\r\n            \"name\": \"$$$ APP 2 $$$\"\r\n          },\r\n          {\r\n            \"type\": \"div\",\r\n            \"attrs\": [\r\n              {\r\n                \"name\": \"id\",\r\n                \"value\": \"mainDiv_layout2\"\r\n              }\r\n            ],\r\n            \"routes\": [\r\n              {\r\n                \"type\": \"application\",\r\n                \"name\": \"$$$ APP 3 $$$\"\r\n              }\r\n            ]\r\n          }\r\n        ]\r\n      }\r\n    ]\r\n  },\r\n  \"cssStyle\": {\r\n    \"children\": {\r\n      \"#externalDiv_layout2 > div:nth-of-type(2) > :first-child > :first-child\": {\r\n        \"children\": {},\r\n        \"attributes\": {\r\n          \"margin-top\": \"60px\"\r\n        }\r\n      },\r\n      \"#mainDiv_layout2\": {\r\n        \"children\": {},\r\n        \"attributes\": {\r\n          \"-webkit-box-sizing\": \"border-box\",\r\n          \"-moz-box-sizing\": \"border-box\",\r\n          \"box-sizing\": \"border-box\",\r\n          \"height\": \"100vh\",\r\n          \"width\": \"100%\",\r\n          \"padding-top\": \"60px\"\r\n        }\r\n      },\r\n      \"#mainDiv_layout2 > div:nth-of-type(1)\": {\r\n        \"children\": {},\r\n        \"attributes\": {\r\n          \"height\": \"100%\",\r\n          \"width\": \"100%\"\r\n        }\r\n      },\r\n      \"@media screen and (max-width: 851px)\": {\r\n        \"children\": {\r\n          \"#externalDiv_layout2 > div:nth-of-type(2) > :first-child > :first-child\": {\r\n            \"children\": {},\r\n            \"attributes\": {\r\n              \"margin-top\": \"50px\"\r\n            }\r\n          },\r\n          \"#mainDiv_layout2\": {\r\n            \"children\": {},\r\n            \"attributes\": {\r\n              \"padding-top\": \"50px\"\r\n            }\r\n          }\r\n        },\r\n        \"attributes\": {}\r\n      }\r\n    },\r\n    \"attributes\": {}\r\n  }\r\n}', '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19dxaalBjsT5p+WTaDcX9ey4vUZXTVbvke/HV2/12KMtnjOG5M7/Wl4MqJ4dX3QfPi3avVi+I6g/vg4fwmOfxJgTUr+buy1XgrzOx6E5BDHmxDRBnkU57rdLac4VUfSHMS5ncev0BAew5SU0V5Yh7I9jtoUphiU0gffMEpoASYgxQAJiDJCAGAMkIMYACYgxQAL+79AAB+bWNoAkxBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARIQY4AExBggATEGSECMARLo1I/Zw+ZxmM2O6scFeFan0zEzBsjg6GbGAO9PxP8BkdDE3omiYakAAAAASUVORK5CYII='),
(3, '{\r\n  \"layout\": {\r\n    \"type\": \"route\",\r\n    \"path\": \"$$$ PATH $$$\",\r\n    \"routes\": [\r\n      {\r\n        \"type\": \"div\",\r\n        \"attrs\": [\r\n          {\r\n            \"name\": \"id\",\r\n            \"value\": \"externalDiv_layout3\"\r\n          }\r\n        ],\r\n        \"routes\": [\r\n          {\r\n            \"type\": \"application\",\r\n            \"name\": \"$$$ APP 0 $$$\"\r\n          },\r\n          {\r\n            \"type\": \"application\",\r\n            \"name\": \"$$$ APP 1 $$$\"\r\n          },\r\n          {\r\n            \"type\": \"application\",\r\n            \"name\": \"$$$ APP 2 $$$\"\r\n          },\r\n          {\r\n            \"type\": \"application\",\r\n            \"name\": \"$$$ APP 2 $$$\"\r\n          },\r\n          {\r\n            \"type\": \"div\",\r\n            \"attrs\": [\r\n              {\r\n                \"name\": \"id\",\r\n                \"value\": \"mainDiv_layout3\"\r\n              }\r\n            ],\r\n            \"routes\": [\r\n              {\r\n                \"type\": \"div\",\r\n                \"attrs\": [\r\n                  {\r\n                    \"name\": \"id\",\r\n                    \"value\": \"verticalSplitAppsDiv_layout3\"\r\n                  }\r\n                ],\r\n                \"routes\": [\r\n                  {\r\n                    \"type\": \"div\",\r\n                    \"attrs\": [\r\n                      {\r\n                        \"name\": \"class\",\r\n                        \"value\": \"singleVerticalSplitAppDiv_layout3\"\r\n                      }\r\n                    ],\r\n                    \"routes\": [\r\n                      {\r\n                        \"type\": \"application\",\r\n                        \"name\": \"$$$ APP 3 $$$\"\r\n                      }\r\n                    ]\r\n                  },\r\n                  {\r\n                    \"type\": \"div\",\r\n                    \"attrs\": [\r\n                      {\r\n                        \"name\": \"class\",\r\n                        \"value\": \"singleVerticalSplitAppDiv_layout3\"\r\n                      }\r\n                    ],\r\n                    \"routes\": [\r\n                      {\r\n                        \"type\": \"application\",\r\n                        \"name\": \"$$$ APP 4 $$$\"\r\n                      }\r\n                    ]\r\n                  }\r\n                ]\r\n              }\r\n            ]\r\n          }\r\n        ]\r\n      }\r\n    ]\r\n  },\r\n  \"cssStyle\": {\r\n    \"children\": {\r\n      \"#externalDiv_layout3 > div:nth-of-type(2) > :first-child > :first-child\": {\r\n        \"children\": {},\r\n        \"attributes\": {\r\n          \"margin-top\": \"60px\"\r\n        }\r\n      },\r\n      \"#mainDiv_layout3\": {\r\n        \"children\": {},\r\n        \"attributes\": {\r\n          \"-webkit-box-sizing\": \"border-box\",\r\n          \"-moz-box-sizing\": \"border-box\",\r\n          \"box-sizing\": \"border-box\",\r\n          \"height\": \"100vh\",\r\n          \"width\": \"100%\",\r\n          \"padding-top\": \"60px\"\r\n        }\r\n      },\r\n      \"#verticalSplitAppsDiv_layout3\": {\r\n        \"children\": {},\r\n        \"attributes\": {\r\n          \"display\": \"flex\",\r\n          \"height\": \"100%\",\r\n          \"width\": \"100%\"\r\n        }\r\n      },\r\n      \".singleVerticalSplitAppDiv_layout3\": {\r\n        \"children\": {},\r\n        \"attributes\": {\r\n          \"flex\": \"1\",\r\n          \"height\": \"100%\"\r\n        }\r\n      },\r\n      \".singleVerticalSplitAppDiv_layout3 > :first-child\": {\r\n        \"children\": {},\r\n        \"attributes\": {\r\n          \"height\": \"100%\"\r\n        }\r\n      },\r\n      \"@media screen and (max-width: 851px)\": {\r\n        \"children\": {\r\n          \"#externalDiv_layout3 > div:nth-of-type(2) > :first-child > :first-child\": {\r\n            \"children\": {},\r\n            \"attributes\": {\r\n              \"margin-top\": \"50px\"\r\n            }\r\n          },\r\n          \"#mainDiv_layout3\": {\r\n            \"children\": {},\r\n            \"attributes\": {\r\n              \"padding-top\": \"50px\"\r\n            }\r\n          }\r\n        },\r\n        \"attributes\": {}\r\n      }\r\n    },\r\n    \"attributes\": {}\r\n  }\r\n}', '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'),
(4, '{\n  \"layout\": {\n    \"type\": \"route\",\n    \"path\": \"$$$ PATH $$$\",\n    \"routes\": [\n      {\n        \"type\": \"div\",\n        \"attrs\": [\n          {\n            \"name\": \"id\",\n            \"value\": \"externalDiv_layout4\"\n          }\n        ],\n        \"routes\": [\n          {\n            \"type\": \"application\",\n            \"name\": \"$$$ APP 0 $$$\"\n          },\n          {\n            \"type\": \"application\",\n            \"name\": \"$$$ APP 1 $$$\"\n          },\n          {\n            \"type\": \"application\",\n            \"name\": \"$$$ APP 2 $$$\"\n          },\n          {\n            \"type\": \"application\",\n            \"name\": \"$$$ APP 2 $$$\"\n          },\n          {\n            \"type\": \"div\",\n            \"attrs\": [\n              {\n                \"name\": \"id\",\n                \"value\": \"mainDiv_layout4\"\n              }\n            ],\n            \"routes\": [\n              {\n                \"type\": \"div\",\n                \"attrs\": [\n                  {\n                    \"name\": \"id\",\n                    \"value\": \"horizontalSplitAppsDiv_layout4\"\n                  }\n                ],\n                \"routes\": [\n                  {\n                    \"type\": \"div\",\n                    \"attrs\": [\n                      {\n                        \"name\": \"class\",\n                        \"value\": \"singleHorizontalSplitAppDiv_layout4\"\n                      }\n                    ],\n                    \"routes\": [\n                      {\n                        \"type\": \"application\",\n                        \"name\": \"$$$ APP 3 $$$\"\n                      }\n                    ]\n                  },\n                  {\n                    \"type\": \"div\",\n                    \"attrs\": [\n                      {\n                        \"name\": \"class\",\n                        \"value\": \"singleHorizontalSplitAppDiv_layout4\"\n                      }\n                    ],\n                    \"routes\": [\n                      {\n                        \"type\": \"application\",\n                        \"name\": \"$$$ APP 4 $$$\"\n                      }\n                    ]\n                  }\n                ]\n              }\n            ]\n          }\n        ]\n      }\n    ]\n  },\n  \"cssStyle\": {\n    \"children\": {\n      \"#externalDiv_layout4 > div:nth-of-type(2) > :first-child > :first-child\": {\n        \"children\": {},\n        \"attributes\": {\n          \"margin-top\": \"60px\"\n        }\n      },\n      \"#mainDiv_layout4\": {\n        \"children\": {},\n        \"attributes\": {\n          \"-webkit-box-sizing\": \"border-box\",\n          \"-moz-box-sizing\": \"border-box\",\n          \"box-sizing\": \"border-box\",\n          \"height\": \"100vh\",\n          \"width\": \"100%\",\n          \"padding-top\": \"60px\"\n        }\n      },\n      \"#horizontalSplitAppsDiv_layout4\": {\n        \"children\": {},\n        \"attributes\": {\n          \"display\": \"table\",\n          \"height\": \"100%\",\n          \"width\": \"100%\"\n        }\n      },\n      \".singleHorizontalSplitAppDiv_layout4\": {\n        \"children\": {},\n        \"attributes\": {\n          \"display\": \"table-row\",\n          \"height\": \"50%\",\n          \"width\": \"100%\"\n        }\n      },\n      \".singleHorizontalSplitAppDiv_layout4 > :first-child\": {\n        \"children\": {},\n        \"attributes\": {\n          \"height\": \"100%\",\n          \"width\": \"100%\"\n        }\n      },\n      \"@media screen and (max-width: 851px)\": {\n        \"children\": {\n          \"#externalDiv_layout4 > div:nth-of-type(2) > :first-child > :first-child\": {\n            \"children\": {},\n            \"attributes\": {\n              \"margin-top\": \"50px\"\n            }\n          },\n          \"#mainDiv_layout4\": {\n            \"children\": {},\n            \"attributes\": {\n              \"padding-top\": \"50px\"\n            }\n          }\n        },\n        \"attributes\": {}\n      }\n    },\n    \"attributes\": {}\n  }\n}', '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'),
(5, '{\r\n  \"layout\": {\r\n    \"type\": \"route\",\r\n    \"path\": \"$$$ PATH $$$\",\r\n    \"routes\": [\r\n      {\r\n        \"type\": \"div\",\r\n        \"attrs\": [\r\n          {\r\n            \"name\": \"id\",\r\n            \"value\": \"externalDiv_layout5\"\r\n          }\r\n        ],\r\n        \"routes\": [\r\n          {\r\n            \"type\": \"application\",\r\n            \"name\": \"$$$ APP 0 $$$\"\r\n          },\r\n          {\r\n            \"type\": \"application\",\r\n            \"name\": \"$$$ APP 1 $$$\"\r\n          },\r\n          {\r\n            \"type\": \"application\",\r\n            \"name\": \"$$$ APP 2 $$$\"\r\n          },\r\n          {\r\n            \"type\": \"application\",\r\n            \"name\": \"$$$ APP 2 $$$\"\r\n          },\r\n          {\r\n            \"type\": \"application\",\r\n            \"name\": \"$$$ APP 2 $$$\"\r\n          },\r\n          {\r\n            \"type\": \"div\",\r\n            \"attrs\": [\r\n              {\r\n                \"name\": \"id\",\r\n                \"value\": \"mainDiv_layout5\"\r\n              }\r\n            ],\r\n            \"routes\": [\r\n              {\r\n                \"type\": \"application\",\r\n                \"name\": \"$$$ APP 3 $$$\"\r\n              }\r\n            ]\r\n          }\r\n        ]\r\n      }\r\n    ]\r\n  },\r\n  \"cssStyle\": {\r\n    \"children\": {\r\n      \"#externalDiv_layout5 > div:nth-of-type(2) > :first-child > :first-child\": {\r\n        \"children\": {},\r\n        \"attributes\": {\r\n          \"margin-top\": \"60px\"\r\n        }\r\n      },\r\n      \"#mainDiv_layout5\": {\r\n        \"children\": {},\r\n        \"attributes\": {\r\n          \"-webkit-box-sizing\": \"border-box\",\r\n          \"-moz-box-sizing\": \"border-box\",\r\n          \"box-sizing\": \"border-box\",\r\n          \"height\": \"100vh\",\r\n          \"width\": \"100%\",\r\n          \"padding-top\": \"60px\"\r\n        }\r\n      },\r\n      \"#mainDiv_layout5 > div:nth-of-type(1)\": {\r\n        \"children\": {},\r\n        \"attributes\": {\r\n          \"height\": \"100%\",\r\n          \"width\": \"100%\"\r\n        }\r\n      },\r\n      \"@media screen and (max-width: 851px)\": {\r\n        \"children\": {\r\n          \"#externalDiv_layout5 > div:nth-of-type(2) > :first-child > :first-child\": {\r\n            \"children\": {},\r\n            \"attributes\": {\r\n              \"margin-top\": \"50px\"\r\n            }\r\n          },\r\n          \"#mainDiv_layout5\": {\r\n            \"children\": {},\r\n            \"attributes\": {\r\n              \"padding-top\": \"50px\"\r\n            }\r\n          }\r\n        },\r\n        \"attributes\": {}\r\n      }\r\n    },\r\n    \"attributes\": {}\r\n  }\r\n}', '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'),
(6, '{\r\n	\"layout\": {\r\n		\"type\": \"route\",\r\n		\"path\": \"$$$ PATH $$$\",\r\n		\"routes\": [{\r\n			\"type\": \"div\",\r\n			\"attrs\": [{\r\n				\"name\": \"id\",\r\n				\"value\": \"externalDiv_layout6\"\r\n			}],\r\n			\"routes\": [{\r\n					\"type\": \"application\",\r\n					\"name\": \"$$$ APP 0 $$$\"\r\n				},\r\n				{\r\n					\"type\": \"div\",\r\n					\"attrs\": [{\r\n						\"name\": \"id\",\r\n						\"value\": \"mainDiv_layout6\"\r\n					}],\r\n					\"routes\": [{\r\n						\"type\": \"application\",\r\n						\"name\": \"$$$ APP 1 $$$\"\r\n					}]\r\n				}\r\n			]\r\n		}]\r\n	},\r\n	\"cssStyle\": {\r\n		\"children\": {\r\n			\"#mainDiv_layout6\": {\r\n				\"children\": {},\r\n				\"attributes\": {\r\n					\"-webkit-box-sizing\": \"border-box\",\r\n					\"-moz-box-sizing\": \"border-box\",\r\n					\"box-sizing\": \"border-box\",\r\n					\"height\": \"100vh\",\r\n					\"width\": \"100%\"\r\n				}\r\n			},\r\n			\"#mainDiv_layout6 > div:nth-of-type(1)\": {\r\n				\"children\": {},\r\n				\"attributes\": {\r\n					\"height\": \"100%\",\r\n					\"width\": \"100%\"\r\n				}\r\n			}\r\n		},\r\n		\"attributes\": {}\r\n	}\r\n}', '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');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `sidebarSection` int(11) DEFAULT NULL,
  `sidebar` tinyint(1) NOT NULL,
  `layoutId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `path`, `sidebarSection`, `sidebar`, `layoutId`) VALUES
(1, '', 1, 1, 1),
(2, 'react-app', 1, 1, 2),
(3, 'angular-app', 1, 1, 2),
(4, 'vertical-split-page', 1, 1, 3),
(5, 'horizontal-split-page', 1, 1, 4),
(6, 'layout-manager-app', 2, 1, 2),
(25, 'map', 1, 1, 5),
(41, 'map-videowall', NULL, 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_section`
--

CREATE TABLE `sidebar_section` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sidebar_section`
--

INSERT INTO `sidebar_section` (`id`, `name`) VALUES
(1, 'First sidebar section'),
(2, 'Second sidebar section');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `language` int(11) NOT NULL DEFAULT 1,
  `admin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `username`, `password`, `token`, `language`, `admin`) VALUES
(1, 'Paolo', 'Patrone', 'fakeUser', '$2b$15$Dvu9Tbl8Jjp1IVd.GWj.HuZAgxJ8bRY8hAAxT8X3DUxYnPJIOqz1e', 'fakeToken', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alarm`
--
ALTER TABLE `alarm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `path` (`path`);

--
-- Indexes for table `apps_in_pages`
--
ALTER TABLE `apps_in_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appsInPages_ibfk_1` (`pageId`),
  ADD KEY `appsInPages_ibfk_2` (`appId`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `language` (`language`);

--
-- Indexes for table `layout`
--
ALTER TABLE `layout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `pages_ibfk_1` (`layoutId`),
  ADD KEY `pages_ibfk_2` (`sidebarSection`);

--
-- Indexes for table `sidebar_section`
--
ALTER TABLE `sidebar_section`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `users_ibfk_1` (`language`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alarm`
--
ALTER TABLE `alarm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `apps_in_pages`
--
ALTER TABLE `apps_in_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `layout`
--
ALTER TABLE `layout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `sidebar_section`
--
ALTER TABLE `sidebar_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apps_in_pages`
--
ALTER TABLE `apps_in_pages`
  ADD CONSTRAINT `apps_in_pages_ibfk_1` FOREIGN KEY (`pageId`) REFERENCES `page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apps_in_pages_ibfk_2` FOREIGN KEY (`appId`) REFERENCES `app` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page`
--
ALTER TABLE `page`
  ADD CONSTRAINT `page_ibfk_1` FOREIGN KEY (`layoutId`) REFERENCES `layout` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `page_ibfk_2` FOREIGN KEY (`sidebarSection`) REFERENCES `sidebar_section` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`language`) REFERENCES `language` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
