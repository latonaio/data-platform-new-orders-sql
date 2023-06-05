CREATE TABLE `data_platform_orders_item_freight_agreement_data`
(
  `OrderID`                                         int(16) NOT NULL,
  `OrderItem`                                       int(6) NOT NULL,
  `OrderItemFreightAgreement`                       int(4) NOT NULL,
  `FreightAgreement`                                int(16) NOT NULL,
  `FreightAgreementItem`                            int(6) NOT NULL,
  `SupplyChainRelationshipID`                       int(16) NOT NULL,
  `SupplyChainRelationshipFreightID`                int(16) NOT NULL,
  `SupplyChainRelationshipFreightBillingID`         int(4) DEFAULT NULL,
  `SupplyChainRelationshipFreightPaymentID`         int(2) DEFAULT NULL,
  `FreightPartner`                                  int(12) NOT NULL,
  `FreightBillToParty`                              int(12) DEFAULT NULL,
  `FreightBillFromParty`                            int(12) DEFAULT NULL,
  `FreightBillToCountry`                            varchar(3) DEFAULT NULL,
  `FreightBillFromCountry`                          varchar(3) DEFAULT NULL,
  `Product`                                         varchar(40) DEFAULT NULL,  
  `Incoterms`                                       varchar(4) DEFAULT NULL,
  `Project`                                         int(16) DEFAULT NULL,
  `WBSElement`                                      int(8) DEFAULT NULL,
  `IsCancelled`                                     tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`                             tinyint(1) DEFAULT NULL,

  PRIMARY KEY (`OrderID`, `OrderItem`, `OrderItemFreightAgreement`),
    
  CONSTRAINT `DataPlatformOrdersItemFreightAgreementData_fk` FOREIGN KEY (`OrderID`, `OrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderID`, `OrderItem`),
  CONSTRAINT `DataPlatformOrdersItemFreightAgreementDataFreightAgreementItem_fk` FOREIGN KEY (`FreightAgreement`, `FreightAgreementItem`) REFERENCES `data_platform_freight_agreement_item_data` (`FreightAgreement`, `FreightAgreementItem`),
  CONSTRAINT `DataPlatformOrdersItemFreightAgreementDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
