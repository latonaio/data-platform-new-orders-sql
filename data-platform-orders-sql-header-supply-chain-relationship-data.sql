CREATE TABLE `data_platform_orders_header_supply_chain_relationship_data`
(
    `OrderID`                         int(16) NOT NULL,
    `SupplyChainRelationshipID`       int(16) NOT NULL,
    `Buyer`                           int(12) NOT NULL,
    `Seller`                          int(12) NOT NULL,
    `BillToParty`                     int(12) NOT NULL,
    `BillFromParty`                   int(12) NOT NULL,
    `Payer`                           int(12) NOT NULL,
    `Payee`                           int(12) NOT NULL,
    
    PRIMARY KEY (`OrderID`, `SupplyChainRelationshipID`),
    
    CONSTRAINT `DataPlatformOrdersHeaderSupplyChainRelationshipData_fk` FOREIGN KEY (`SupplyChainRelationshipID`) REFERENCES `data_platform_supply_chain_relationship_general_data` (`SupplyChainRelationshipID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
