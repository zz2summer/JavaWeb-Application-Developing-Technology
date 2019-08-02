/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50135
Source Host           : localhost:3306
Source Database       : jpetstore

Target Server Type    : MYSQL
Target Server Version : 50135
File Encoding         : 65001

Date: 2012-09-28 21:46:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `userid` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  `addr1` varchar(80) NOT NULL,
  `addr2` varchar(40) DEFAULT NULL,
  `city` varchar(80) NOT NULL,
  `state` varchar(80) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phone` varchar(80) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('a', 'a', 'a', 'a', null, 'a', 'a', 'aa', 'a', 'a', 'a', 'a');
INSERT INTO `account` VALUES ('ACID', 'acid@yourdomain.com', 'ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('j2ee', 'yourname@yourdomain.com', 'ABC', 'XYX', null, '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');

-- ----------------------------
-- Table structure for `bannerdata`
-- ----------------------------
DROP TABLE IF EXISTS `bannerdata`;
CREATE TABLE `bannerdata` (
  `favcategory` varchar(80) NOT NULL,
  `bannername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`favcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bannerdata
-- ----------------------------
INSERT INTO `bannerdata` VALUES ('BIRDS', '<image src=\"../images/banner_birds.gif\">');
INSERT INTO `bannerdata` VALUES ('CATS', '<image src=\"../images/banner_cats.gif\">');
INSERT INTO `bannerdata` VALUES ('DOGS', '<image src=\"../images/banner_dogs.gif\">');
INSERT INTO `bannerdata` VALUES ('FISH', '<image src=\"../images/banner_fish.gif\">');
INSERT INTO `bannerdata` VALUES ('REPTILES', '<image src=\"../images/banner_reptiles.gif\">');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('BIRDS', 'Birds', '<image src=\"../images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>');
INSERT INTO `category` VALUES ('CATS', 'Cats', '<image src=\"../images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>');
INSERT INTO `category` VALUES ('DOGS', 'Dogs', '<image src=\"../images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>');
INSERT INTO `category` VALUES ('FISH', 'Fish', '<image src=\"../images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>');
INSERT INTO `category` VALUES ('REPTILES', 'Reptiles', '<image src=\"../images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');

-- ----------------------------
-- Table structure for `inventory`
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `itemid` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('EST-1', '10000');
INSERT INTO `inventory` VALUES ('EST-10', '10000');
INSERT INTO `inventory` VALUES ('EST-11', '10000');
INSERT INTO `inventory` VALUES ('EST-12', '10000');
INSERT INTO `inventory` VALUES ('EST-13', '10000');
INSERT INTO `inventory` VALUES ('EST-14', '10000');
INSERT INTO `inventory` VALUES ('EST-15', '10000');
INSERT INTO `inventory` VALUES ('EST-16', '10000');
INSERT INTO `inventory` VALUES ('EST-17', '10000');
INSERT INTO `inventory` VALUES ('EST-18', '10000');
INSERT INTO `inventory` VALUES ('EST-19', '10000');
INSERT INTO `inventory` VALUES ('EST-2', '10000');
INSERT INTO `inventory` VALUES ('EST-20', '10000');
INSERT INTO `inventory` VALUES ('EST-21', '10000');
INSERT INTO `inventory` VALUES ('EST-22', '10000');
INSERT INTO `inventory` VALUES ('EST-23', '10000');
INSERT INTO `inventory` VALUES ('EST-24', '10000');
INSERT INTO `inventory` VALUES ('EST-25', '10000');
INSERT INTO `inventory` VALUES ('EST-26', '10000');
INSERT INTO `inventory` VALUES ('EST-27', '10000');
INSERT INTO `inventory` VALUES ('EST-28', '10000');
INSERT INTO `inventory` VALUES ('EST-3', '10000');
INSERT INTO `inventory` VALUES ('EST-4', '10000');
INSERT INTO `inventory` VALUES ('EST-5', '10000');
INSERT INTO `inventory` VALUES ('EST-6', '10000');
INSERT INTO `inventory` VALUES ('EST-7', '10000');
INSERT INTO `inventory` VALUES ('EST-8', '10000');
INSERT INTO `inventory` VALUES ('EST-9', '10000');

-- ----------------------------
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemid` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `listprice` decimal(10,2) DEFAULT NULL,
  `unitcost` decimal(10,2) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `attr1` varchar(80) DEFAULT NULL,
  `attr2` varchar(80) DEFAULT NULL,
  `attr3` varchar(80) DEFAULT NULL,
  `attr4` varchar(80) DEFAULT NULL,
  `attr5` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `fk_item_2` (`supplier`),
  KEY `itemProd` (`productid`),
  CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('EST-1', 'FI-SW-01', '16.50', '10.00', '1', 'P', 'Large', null, null, null, null);
INSERT INTO `item` VALUES ('EST-10', 'K9-DL-01', '18.50', '12.00', '1', 'P', 'Spotted Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-11', 'RP-SN-01', '18.50', '12.00', '1', 'P', 'Venomless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-12', 'RP-SN-01', '18.50', '12.00', '1', 'P', 'Rattleless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-13', 'RP-LI-02', '18.50', '12.00', '1', 'P', 'Green Adult', null, null, null, null);
INSERT INTO `item` VALUES ('EST-14', 'FL-DSH-01', '58.50', '12.00', '1', 'P', 'Tailless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-15', 'FL-DSH-01', '23.50', '12.00', '1', 'P', 'With tail', null, null, null, null);
INSERT INTO `item` VALUES ('EST-16', 'FL-DLH-02', '93.50', '12.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-17', 'FL-DLH-02', '93.50', '12.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-18', 'AV-CB-01', '193.50', '92.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-19', 'AV-SB-02', '15.50', '2.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-2', 'FI-SW-01', '16.50', '10.00', '1', 'P', 'Small', null, null, null, null);
INSERT INTO `item` VALUES ('EST-20', 'FI-FW-02', '5.50', '2.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-21', 'FI-FW-02', '5.29', '1.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-22', 'K9-RT-02', '135.50', '100.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-23', 'K9-RT-02', '145.49', '100.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-24', 'K9-RT-02', '255.50', '92.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-25', 'K9-RT-02', '325.29', '90.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-26', 'K9-CW-01', '125.50', '92.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-27', 'K9-CW-01', '155.29', '90.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-28', 'K9-RT-01', '155.29', '90.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-3', 'FI-SW-02', '18.50', '12.00', '1', 'P', 'Toothless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-4', 'FI-FW-01', '18.50', '12.00', '1', 'P', 'Spotted', null, null, null, null);
INSERT INTO `item` VALUES ('EST-5', 'FI-FW-01', '18.50', '12.00', '1', 'P', 'Spotless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-6', 'K9-BD-01', '18.50', '12.00', '1', 'P', 'Male Adult', null, null, null, null);
INSERT INTO `item` VALUES ('EST-7', 'K9-BD-01', '18.50', '12.00', '1', 'P', 'Female Puppy', null, null, null, null);
INSERT INTO `item` VALUES ('EST-8', 'K9-PO-02', '18.50', '12.00', '1', 'P', 'Male Puppy', null, null, null, null);
INSERT INTO `item` VALUES ('EST-9', 'K9-DL-01', '18.50', '12.00', '1', 'P', 'Spotless Male Puppy', null, null, null, null);

-- ----------------------------
-- Table structure for `lineitem`
-- ----------------------------
DROP TABLE IF EXISTS `lineitem`;
CREATE TABLE `lineitem` (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `itemid` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lineitem
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `userid` varchar(80) NOT NULL,
  `orderdate` date NOT NULL,
  `shipaddr1` varchar(80) NOT NULL,
  `shipaddr2` varchar(80) DEFAULT NULL,
  `shipcity` varchar(80) NOT NULL,
  `shipstate` varchar(80) NOT NULL,
  `shipzip` varchar(20) NOT NULL,
  `shipcountry` varchar(20) NOT NULL,
  `billaddr1` varchar(80) NOT NULL,
  `billaddr2` varchar(80) DEFAULT NULL,
  `billcity` varchar(80) NOT NULL,
  `billstate` varchar(80) NOT NULL,
  `billzip` varchar(20) NOT NULL,
  `billcountry` varchar(20) NOT NULL,
  `courier` varchar(80) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `billtofirstname` varchar(80) NOT NULL,
  `billtolastname` varchar(80) NOT NULL,
  `shiptofirstname` varchar(80) NOT NULL,
  `shiptolastname` varchar(80) NOT NULL,
  `creditcard` varchar(80) NOT NULL,
  `exprdate` varchar(7) NOT NULL,
  `cardtype` varchar(80) NOT NULL,
  `locale` varchar(80) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for `orderstatus`
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus` (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `timestamp` date NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderstatus
-- ----------------------------

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `productCat` (`category`),
  KEY `productName` (`name`),
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('AV-CB-01', 'BIRDS', 'Amazon Parrot', '<image src=\"../images/bird4.gif\">Great companion for up to 75 years');
INSERT INTO `product` VALUES ('AV-SB-02', 'BIRDS', 'Finch', '<image src=\"../images/bird1.gif\">Great stress reliever');
INSERT INTO `product` VALUES ('FI-FW-01', 'FISH', 'Koi', '<image src=\"../images/fish3.gif\">Fresh Water fish from Japan');
INSERT INTO `product` VALUES ('FI-FW-02', 'FISH', 'Goldfish', '<image src=\"../images/fish2.gif\">Fresh Water fish from China');
INSERT INTO `product` VALUES ('FI-SW-01', 'FISH', 'Angelfish', '<image src=\"../images/fish1.jpg\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FI-SW-02', 'FISH', 'Tiger Shark', '<image src=\"../images/fish4.gif\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FL-DLH-02', 'CATS', 'Persian', '<image src=\"../images/cat1.gif\">Friendly house cat, doubles as a princess');
INSERT INTO `product` VALUES ('FL-DSH-01', 'CATS', 'Manx', '<image src=\"../images/cat3.gif\">Great for reducing mouse populations');
INSERT INTO `product` VALUES ('K9-BD-01', 'DOGS', 'Bulldog', '<image src=\"../images/dog2.gif\">Friendly dog from England');
INSERT INTO `product` VALUES ('K9-CW-01', 'DOGS', 'Chihuahua', '<image src=\"../images/dog4.gif\">Great companion dog');
INSERT INTO `product` VALUES ('K9-DL-01', 'DOGS', 'Dalmation', '<image src=\"../images/dog5.gif\">Great dog for a Fire Station');
INSERT INTO `product` VALUES ('K9-PO-02', 'DOGS', 'Poodle', '<image src=\"../images/dog6.gif\">Cute dog from France');
INSERT INTO `product` VALUES ('K9-RT-01', 'DOGS', 'Golden Retriever', '<image src=\"../images/dog1.gif\">Great family dog');
INSERT INTO `product` VALUES ('K9-RT-02', 'DOGS', 'Labrador Retriever', '<image src=\"../images/dog5.gif\">Great hunting dog');
INSERT INTO `product` VALUES ('RP-LI-02', 'REPTILES', 'Iguana', '<image src=\"../images/lizard2.gif\">Friendly green friend');
INSERT INTO `product` VALUES ('RP-SN-01', 'REPTILES', 'Rattlesnake', '<image src=\"../images/lizard3.gif\">Doubles as a watch dog');

-- ----------------------------
-- Table structure for `profile`
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `userid` varchar(80) NOT NULL,
  `langpref` varchar(80) NOT NULL,
  `favcategory` varchar(30) DEFAULT NULL,
  `mylistopt` tinyint(1) DEFAULT NULL,
  `banneropt` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('a', 'japanese', 'DOGS', null, null);
INSERT INTO `profile` VALUES ('ACID', 'english', 'CATS', '1', '1');
INSERT INTO `profile` VALUES ('j2ee', 'english', 'FISH', '1', '1');

-- ----------------------------
-- Table structure for `sequence`
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `name` varchar(30) NOT NULL,
  `nextid` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('linenum', '1000');
INSERT INTO `sequence` VALUES ('ordernum', '1000');

-- ----------------------------
-- Table structure for `signon`
-- ----------------------------
DROP TABLE IF EXISTS `signon`;
CREATE TABLE `signon` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signon
-- ----------------------------
INSERT INTO `signon` VALUES ('a', 'a');
INSERT INTO `signon` VALUES ('ACID', 'ACID');
INSERT INTO `signon` VALUES ('j2ee', 'j2ee');

-- ----------------------------
-- Table structure for `supplier`
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `suppid` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `addr1` varchar(80) DEFAULT NULL,
  `addr2` varchar(80) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `state` varchar(80) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1', 'XYZ Pets', 'AC', '600 Avon Way', '', 'Los Angeles', 'CA', '94024', '212-947-0797');
INSERT INTO `supplier` VALUES ('2', 'ABC Pets', 'AC', '700 Abalone Way', '', 'San Francisco ', 'CA', '94024', '415-947-0797');
