CREATE TABLE `data_platform_orders_item_doc_data`
(
  `OrderID`                        int(16) NOT NULL,
  `OrderItem`                      int(6) NOT NULL,
  `DocType`                        varchar(100) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`OrderID`, `OrderItem`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DataPlatformOrdersItemDocData_fk` FOREIGN KEY (`OrderID`, `OrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderID`, `OrderItem`),
    CONSTRAINT `DataPlatformOrdersItemDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DataPlatformOrdersItemDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
