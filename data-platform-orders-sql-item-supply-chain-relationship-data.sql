CREATE TABLE `data_platform_orders_item_supply_chain_relationship_data`
(
    `OrderID`                         int(16) NOT NULL,
    `OrderItem`                       int(6) NOT NULL,
    `SupplyChainRelationshipID`       int(16) NOT NULL,
    `DeliverToParty`                  int(12) NOT NULL,
    `DeliverFromParty`                int(12) NOT NULL,
    `ReceivingPlant`                  varchar(4) NOT NULL,
    `IssuingPlant`                    varchar(4) NOT NULL,
    `Buyer`                           int(12) NOT NULL,
    `Seller`                          int(12) NOT NULL,
    `Manufacturerer`                  int(12) DEFAULT NULL,
    `LogisticsDistributor`            int(12) DEFAULT NULL,
    `BillToParty`                     int(12) NOT NULL,
    `BillFromParty`                   int(12) NOT NULL,
    `Payer`                           int(12) NOT NULL,
    `Payee`                           int(12) NOT NULL,
    
    PRIMARY KEY (`OrderID`, `OrderItem`, `SupplyChainRelationshipID`),
    
    CONSTRAINT `DataPlatformOrdersItemSupplyChainRelationshipData_fk` FOREIGN KEY (`SupplyChainRelationshipID`) REFERENCES `data_platform_supply_chain_relationship_header_data` (`SupplyChainRelationshipID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
