CREATE TABLE `data_platform_orders_item_schedule_line_data`
(
  `OrderID`                                       int(16) NOT NULL,
  `OrderItem`                                     int(6) NOT NULL,
  `ScheduleLine`                                  int(6) NOT NULL,
  `SupplyChainRelationshipID`                     int(16) NOT NULL,
  `SupplyChainRelationshipStockConfPlantID`       int(4) NOT NULL,
  `Product`                                       varchar(40) NOT NULL,
  `StockConfirmationBussinessPartner`             int(12) NOT NULL,
  `StockConfirmationPlant`                        varchar(4) NOT NULL,
  `StockConfirmationPlantTimeZone`                varchar(3) DEFAULT NULL,
  `StockConfirmationPlantBatch`                   varchar(10) DEFAULT NULL,
  `StockConfirmationPlantBatchValidityStartDate`  date DEFAULT NULL,
  `StockConfirmationPlantBatchValidityEndDate`    date DEFAULT NULL,
  `RequestedDeliveryDate`                         date NOT NULL,
  `ConfirmedDeliveryDate`                         date NOT NULL,
  `OrderQuantityInBaseUnit`                       float(15) NOT NULL,
  `ConfirmedOrderQuantityByPDTAvailCheck`         float(15) NOT NULL,
  `DeliveredQuantityInBaseUnit`                   float(15) DEFAULT NULL,
  `UndeliveredQuantityInBaseUnit`                 float(15) DEFAULT NULL,
  `OpenConfirmedQuantityInBaseUnit`               float(15) DEFAULT NULL,
  `StockIsFullyConfirmed`                         tinyint(1) DEFAULT NULL,
  `PlusMinusFlag`                                 varchar(1) NOT NULL,
  `ItemScheduleLineDeliveryBlockStatus`           tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`                           tinyint(1) DEFAULT NULL,

  PRIMARY KEY (`OrderID`, `OrderItem`, `ScheduleLine`),
    
  CONSTRAINT `DataPlatformOrdersItemScheduleLineData_fk` FOREIGN KEY (`OrderID`, `OrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderID`, `OrderItem`),
  CONSTRAINT `DataPlatformOrdersItemScheduleLineDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
  CONSTRAINT `DataPlatformOrdersItemScheduleLineDataStockConfirmationPlantTimeZone_fk` FOREIGN KEY (`StockConfirmationPlantTimeZone`) REFERENCES `data_platform_time_zone_time_zone_data` (`TimeZone`),
  CONSTRAINT `DataPlatformOrdersItemScheduleLineDataStockConfirmationPlantBatch_fk` FOREIGN KEY (`Product`, `StockConfirmationBussinessPartner`, `StockConfirmationPlant`, `StockConfirmationPlantBatch`) REFERENCES `data_platform_batch_master_record_batch_data` (`Product`, `BusinessPartner`, `Plant`, `Batch`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
