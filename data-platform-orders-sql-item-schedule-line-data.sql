CREATE TABLE `data_platform_orders_item_schedule_line_data`
(
  `OrderID`                                       int(16) NOT NULL,
  `OrderItem`                                     int(6) NOT NULL,
  `ScheduleLine`                                  int(3) NOT NULL,
  `Product`                                       varchar(40) NOT NULL,
  `StockConfirmationPartnerFunction`              varchar(40) NOT NULL,
  `StockConfirmationBussinessPartner`             int(12) NOT NULL,
  `StockConfirmationPlant`                        varchar(4) NOT NULL,
  `StockConfirmationPlantBatch`                   varchar(10) DEFAULT NULL,
  `StockConfirmationPlantBatchValidityStartDate`  date DEFAULT NULL,
  `StockConfirmationPlantBatchValidityEndDate`    date DEFAULT NULL,
  `RequestedDeliveryDate`                         date NOT NULL,
  `ConfirmedDeliveryDate`                         date DEFAULT NULL,
  `OrderQuantityInBaseUnit`                       float(15) DEFAULT NULL,
  `ConfirmedOrderQuantityByPDTAvailCheck`         float(15) DEFAULT NULL,
  `DeliveredQuantityInBaseUnit`                   float(15) DEFAULT NULL,
  `OpenConfirmedQuantityInBaseUnit`               float(15) DEFAULT NULL,
  `StockIsFullyConfirmed`                         tinyint(1) DEFAULT NULL,
  `ItemScheduleLineDeliveryBlockStatus`           tinyint(1) DEFAULT NULL,
  `PlusMinusFlag`                                 varchar(1) NOT NULL,

  PRIMARY KEY (`OrderID`, `OrderItem`, `ScheduleLine`),
    
  CONSTRAINT `DataPlatformOrdersItemScheduleLineData_fk` FOREIGN KEY (`OrderID`, `OrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderID`, `OrderItem`),
  CONSTRAINT `DataPlatformOrdersItemScheduleLineDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
  CONSTRAINT `DataPlatformOrdersItemScheduleLineDataStockConfirmationPlant_fk` FOREIGN KEY (`OrderID`, `OrderItem`, `StockConfirmationPartnerFunction`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`) REFERENCES `data_platform_orders_item_partner_plant_data` (`OrderID`, `OrderItem`, `PartnerFunction`, `BusinessPartner`, `Plant`),
  CONSTRAINT `DataPlatformOrdersItemScheduleLineDataStockConfirmationPlantBatch_fk` FOREIGN KEY (`Product`, `StockConfirmationBussinessPartner`, `StockConfirmationPlant`, `StockConfirmationPlantBatch`) REFERENCES `data_platform_batch_master_record_batch_data` (`Product`, `BusinessPartner`, `Plant`, `Batch`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
