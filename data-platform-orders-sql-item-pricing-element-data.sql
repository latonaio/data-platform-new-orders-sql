CREATE TABLE `data_platform_orders_item_pricing_element_data`
(
  `OrderID`                     int(16) NOT NULL,
  `OrderItem`                   int(6) NOT NULL,
  `PricingProcedureCounter`     int(3) NOT NULL,
  `ConditionType`               varchar(4) DEFAULT NULL,
  `PricingDate`                 date DEFAULT NULL,
  `ConditionRateValue`          float(13) DEFAULT NULL,
  `ConditionCurrency`           varchar(5) DEFAULT NULL,
  `ConditionQuantity`           float(6) DEFAULT NULL,
  `ConditionQuantityUnit`       varchar(3) DEFAULT NULL,
  `ConditionRecord`             int(12) DEFAULT NULL,
  `ConditionSequentialNumber`   int(3) DEFAULT NULL,
  `TaxCode`                     varchar(2) DEFAULT NULL,
  `ConditionAmount`             float(13) DEFAULT NULL,
  `TransactionCurrency`         varchar(5) DEFAULT NULL,
  `ConditionIsManuallyChanged`  tinyint(1) DEFAULT NULL,
  
  PRIMARY KEY (`OrderID`, `OrderItem`, `PricingProcedureCounter`),
    
  CONSTRAINT `DataPlatformOrdersItemPricingElementData_fk` FOREIGN KEY (`OrderID`, `OrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderID`, `OrderItem`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
