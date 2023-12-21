CREATE TABLE `data_platform_orders_address_data`
(
    `OrderID`                 int(16) NOT NULL,
    `AddressID`               int(12) NOT NULL,
    `PostalCode`              varchar(10) DEFAULT NULL,
    `LocalRegion`             varchar(3) DEFAULT NULL,
    `Country`                 varchar(3) DEFAULT NULL,
    `District`                varchar(6) DEFAULT NULL,
    `StreetName`              varchar(200) DEFAULT NULL,
    `CityName`                varchar(200) DEFAULT NULL,
    `Building`                varchar(100) DEFAULT NULL,
    `Floor`                   int(4) DEFAULT NULL,
    `Room`                    int(8) DEFAULT NULL,
    
    PRIMARY KEY (`OrderID`, `AddressID`),
    
    CONSTRAINT `DPFMOrdersAddressData_fk` FOREIGN KEY (`OrderID`) REFERENCES `data_platform_orders_header_data` (`OrderID`),
    CONSTRAINT `DPFMOrdersAddressDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
