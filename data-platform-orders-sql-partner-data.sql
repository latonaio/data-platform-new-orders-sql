CREATE TABLE `data_platform_orders_partner_data`
(
    `OrderID`                         int(16) NOT NULL,
    `PartnerFunction`                 varchar(40) NOT NULL,
    `BusinessPartner`                 int(12) NOT NULL,
    `BusinessPartnerFullName`         varchar(200) DEFAULT NULL,
    `BusinessPartnerName`             varchar(100) DEFAULT NULL,
    `Organization`                    varchar(4) DEFAULT NULL,
    `Country`                         varchar(3) DEFAULT NULL,
    `Language`                        varchar(2) DEFAULT NULL,
    `Currency`                        varchar(5) DEFAULT NULL,
    `ExternalDocumentID`              varchar(40) DEFAULT NULL,
    `AddressID`                       int(12) DEFAULT NULL,
    
    PRIMARY KEY (`OrderID`, `PartnerFunction`, `BusinessPartner`),
    
    CONSTRAINT `DataPlatformOrdersPartnerData_fk` FOREIGN KEY (`OrderID`) REFERENCES `data_platform_orders_header_data` (`OrderID`),
    CONSTRAINT `DataPlatformOrdersPartnerDataPartnerFunction_fk` FOREIGN KEY (`PartnerFunction`) REFERENCES `data_platform_partner_function_partner_function_data` (`PartnerFunction`),
    CONSTRAINT `DataPlatformOrdersPartnerDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformOrdersPartnerDataCountry_fk` FOREIGN KEY (`Country`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DataPlatformOrdersPartnerDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`),
    CONSTRAINT `DataPlatformOrdersPartnerDataCurrency_fk` FOREIGN KEY (`Currency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DataPlatformOrdersPartnerDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
