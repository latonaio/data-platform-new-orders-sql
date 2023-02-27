CREATE TABLE `data_platform_orders_item_data`
(
    `OrderID`                                           int(16) NOT NULL,
    `OrderItem`                                         int(6) NOT NULL,
    `OrderItemCategory`                                 varchar(4) NOT NULL,
    `SupplyChainRelationshipID`                         int(16) NOT NULL,
    `SupplyChainRelationshipDeliveryID`                 int(6) DEFAULT NULL,
    `SupplyChainRelationshipDeliveryPlantID`            int(4) DEFAULT NULL,
    `SupplyChainRelationshipStockConfPlantID`           int(4) DEFAULT NULL,
    `SupplyChainRelationshipProductionPlantID`          int(4) DEFAULT NULL,
    `OrderItemText`                                     varchar(200) NOT NULL,
    `OrderItemTextByBuyer`                              varchar(200) NOT NULL,
    `OrderItemTextBySeller`                             varchar(200) NOT NULL,
    `Product`                                           varchar(40) NOT NULL,
    `ProductStandardID`                                 varchar(18) NOT NULL,
    `ProductGroup`                                      varchar(9) DEFAULT NULL,
    `BaseUnit`                                          varchar(3) NOT NULL,
    `PricingDate`                                       date NOT NULL,
    `PriceDetnExchangeRate`                             float(8) DEFAULT NULL,
    `RequestedDeliveryDate`                             date NOT NULL,
    `RequestedDeliveryTime`                             time NOT NULL,
    `DeliverToParty`                                    int(12) DEFAULT NULL,
    `DeliverFromParty`                                  int(12) DEFAULT NULL,
    `CreationDate`                                      date NOT NULL,
    `CreationTime`                                      time NOT NULL,
    `LastChangeDate`                                    date NOT NULL,
    `LastChangeTime`                                    time NOT NULL,
    `DeliverToPlant`                                    varchar(4) DEFAULT NULL,
    `DeliverToPlantTimeZone`                            varchar(3) DEFAULT NULL,
    `DeliverToPlantStorageLocation`                     varchar(4) DEFAULT NULL,
    `ProductIsBatchManagedInDeliverToPlant`             tinyint(1) DEFAULT NULL,
    `BatchMgmtPolicyInDeliverToPlant`                   varchar(4) DEFAULT NULL,
    `DeliverToPlantBatch`                               varchar(10) DEFAULT NULL,
    `DeliverToPlantBatchValidityStartDate`              date DEFAULT NULL,
    `DeliverToPlantBatchValidityStartTime`              time DEFAULT NULL,
    `DeliverToPlantBatchValidityEndDate`                date DEFAULT NULL,
    `DeliverToPlantBatchValidityEndTime`                time DEFAULT NULL,
    `DeliverFromPlant`                                  varchar(4) DEFAULT NULL,
    `DeliverFromPlantTimeZone`                          varchar(3) DEFAULT NULL,
    `DeliverFromPlantStorageLocation`                   varchar(4) DEFAULT NULL,
    `ProductIsBatchManagedInDeliverFromPlant`           tinyint(1) DEFAULT NULL,
    `BatchMgmtPolicyInDeliverFromPlant`                 varchar(4) DEFAULT NULL,
    `DeliverFromPlantBatch`                             varchar(10) DEFAULT NULL,
    `DeliverFromPlantBatchValidityStartDate`            date DEFAULT NULL,
    `DeliverFromPlantBatchValidityStartTime`            time DEFAULT NULL,
    `DeliverFromPlantBatchValidityEndDate`              date DEFAULT NULL,
    `DeliverFromPlantBatchValidityEndTime`              time DEFAULT NULL,
    `DeliveryUnit`                                      varchar(3) NOT NULL,
    `StockConfirmationBusinessPartner`                  int(12) DEFAULT NULL,
    `StockConfirmationPlant`                            varchar(4) DEFAULT NULL,
    `StockConfirmationPlantTimeZone`                    varchar(3) DEFAULT NULL,
    `ProductIsBatchManagedInStockConfirmationPlant`     tinyint(1) DEFAULT NULL,
    `BatchMgmtPolicyInStockConfirmationPlant`           varchar(4) DEFAULT NULL,
    `StockConfirmationPlantBatch`                       varchar(10) DEFAULT NULL,
    `StockConfirmationPlantBatchValidityStartDate`      date DEFAULT NULL,
    `StockConfirmationPlantBatchValidityStartTime`      time DEFAULT NULL,
    `StockConfirmationPlantBatchValidityEndDate`        date DEFAULT NULL,
    `StockConfirmationPlantBatchValidityEndTime`        time DEFAULT NULL,
    `ServicesRenderingDate`                             date DEFAULT NULL,
    `OrderQuantityInBaseUnit`                           float(15) NOT NULL,
    `OrderQuantityInDeliveryUnit`                       float(15) NOT NULL,
    `StockConfirmationPolicy`                           varchar(4) DEFAULT NULL,
    `StockConfirmationStatus`                           varchar(2) DEFAULT NULL,
    `ConfirmedOrderQuantityInBaseUnit`                  float(15) DEFAULT NULL,
    `ItemWeightUnit`                                    varchar(3) DEFAULT NULL,
    `ProductGrossWeight`                                float(15) DEFAULT NULL,
    `ItemGrossWeight`                                   float(15) DEFAULT NULL,
    `ProductNetWeight`                                  float(15) DEFAULT NULL,
    `ItemNetWeight`                                     float(15) DEFAULT NULL,
    `InternalCapacityQuantity`                          float(15) DEFAULT NULL,
    `InternalCapacityQuantityUnit`                      varchar(3) DEFAULT NULL,
    `NetAmount`                                         float(13) DEFAULT NULL,
    `TaxAmount`                                         float(13) DEFAULT NULL,
    `GrossAmount`                                       float(13) DEFAULT NULL,
    `InvoiceDocumentDate`                               date DEFAULT NULL,
    `ProductionPlantBusinessPartner`                    int(12) DEFAULT NULL,
    `ProductionPlant`                                   varchar(4) DEFAULT NULL,
    `ProductionPlantTimeZone`                           varchar(3) DEFAULT NULL,
    `ProductionPlantStorageLocation`                    varchar(4) DEFAULT NULL,
    `ProductIsBatchManagedInProductionPlant`            tinyint(1) DEFAULT NULL,
    `BatchMgmtPolicyInProductionPlant`                  varchar(4) DEFAULT NULL,
    `ProductionPlantBatch`                              varchar(10) DEFAULT NULL,
    `ProductionPlantBatchValidityStartDate`             date DEFAULT NULL,
    `ProductionPlantBatchValidityStartTime`             time DEFAULT NULL,
    `ProductionPlantBatchValidityEndDate`               date DEFAULT NULL,
    `ProductionPlantBatchValidityEndTime`               time DEFAULT NULL,
    `InspectionPlan`                                    int(16) DEFAULT NULL,
    `InspectionPlant`                                   varchar(4) DEFAULT NULL,
    `InspectionOrder`                                   int(16) DEFAULT NULL,
    `Incoterms`                                         varchar(4) DEFAULT NULL,
    `TransactionTaxClassification`                      varchar(1) NOT NULL,
    `ProductTaxClassificationBillToCountry`             varchar(1) NOT NULL,
    `ProductTaxClassificationBillFromCountry`           varchar(1) NOT NULL,
    `DefinedTaxClassification`                          varchar(1) NOT NULL,
    `AccountAssignmentGroup`                            varchar(2) NOT NULL,
    `ProductAccountAssignmentGroup`                     varchar(2) NOT NULL,
    `PaymentTerms`                                      varchar(4) NOT NULL,
    `DueCalculationBaseDate`                            date DEFAULT NULL,
    `PaymentDueDate`                                    date DEFAULT NULL,
    `NetPaymentDays`                                    int(3) DEFAULT NULL,
    `PaymentMethod`                                     varchar(1) NOT NULL,
    `Project`                                           varchar(24) DEFAULT NULL,
    `AccountingExchangeRate`                            float(8) DEFAULT NULL,
    `ReferenceDocument`                                 int(16) DEFAULT NULL,
    `ReferenceDocumentItem`                             int(6) DEFAULT NULL,
    `ItemCompleteDeliveryIsDefined`                     tinyint(1) DEFAULT NULL,
    `ItemDeliveryStatus`                                varchar(2) DEFAULT NULL,
    `IssuingStatus`                                     varchar(2) DEFAULT NULL,
    `ReceivingStatus`                                   varchar(2) DEFAULT NULL,
    `ItemBillingStatus`                                 varchar(2) DEFAULT NULL,
    `TaxCode`                                           varchar(1) DEFAULT NULL,
    `TaxRate`                                           float(6) DEFAULT NULL,
    `CountryOfOrigin`                                   varchar(3) DEFAULT NULL,
    `CountryOfOriginLanguage`                           varchar(2) DEFAULT NULL,
    `ItemBlockStatus`                                   tinyint(1) DEFAULT NULL,
    `ItemDeliveryBlockStatus`                           tinyint(1) DEFAULT NULL,
    `ItemBillingBlockStatus`                            tinyint(1) DEFAULT NULL,
    `IsCancelled`                                       tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`                               tinyint(1) DEFAULT NULL,
    
    PRIMARY KEY (`OrderID`, `OrderItem`),
    
    CONSTRAINT `DataPlatformOrdersItemData_fk` FOREIGN KEY (`OrderID`) REFERENCES `data_platform_orders_header_data` (`OrderID`),
    CONSTRAINT `DataPlatformOrdersItemDataSupplyChainRelationshipDeliveryID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`) REFERENCES `data_platform_supply_chain_relationship_delivery_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`),
    CONSTRAINT `DataPlatformOrdersItemDataSupplyChainRelationshipDeliveryPlantID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`) REFERENCES `data_platform_supply_chain_relationship_delivery_plant_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`),
    CONSTRAINT `DataPlatformOrdersItemDataSupplyChainRelationshipStockConfPlantID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipStockConfPlantID`, `Buyer`, `Seller`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`) REFERENCES `data_platform_supply_chain_relationship_stock_conf_plant_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipStockConfPlantID`, `Buyer`, `Seller`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`),
    CONSTRAINT `DataPlatformOrdersItemDataSupplyChainRelationshipProductionPlantID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipProductionPlantID`, `Buyer`, `Seller`, `ProductionPlantBusinessPartner`, `ProductionPlant`) REFERENCES `data_platform_supply_chain_relationship_production_plant_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipProductionPlantID`, `Buyer`, `Seller`, `ProductionPlantBusinessPartner`, `ProductionPlant`),
    CONSTRAINT `DataPlatformOrdersItemDataSupplyChainRelationshipDeliveryPlantRelationProduct_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `Product`) REFERENCES `data_platform_supply_chain_relationship_delivery_plant_relation_product_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipDeliveryID`, `SupplyChainRelationshipDeliveryPlantID`, `Buyer`, `Seller`, `DeliverToParty`, `DeliverFromParty`, `DeliverToPlant`, `DeliverFromPlant`, `Product`),
    CONSTRAINT `DataPlatformOrdersItemDataSupplyChainRelationshipStockConfPlantRelationProduct_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipStockConfPlantID`, `Buyer`, `Seller`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`, `Product`) REFERENCES `data_platform_supply_chain_relationship_stock_conf_plant_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipStockConfPlantID`, `Buyer`, `Seller`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`, `Product`),
    CONSTRAINT `DataPlatformOrdersItemDataSupplyChainRelationshipProductionPlantRelationProduct_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipProductionPlantID`, `Buyer`, `Seller`, `ProductionPlantBusinessPartner`, `ProductionPlant`, `Product`) REFERENCES `data_platform_supply_chain_relationship_production_plant_relation_product_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipProductionPlantID`, `Buyer`, `Seller`, `ProductionPlantBusinessPartner`, `ProductionPlant`, `Product`),
    CONSTRAINT `DataPlatformOrdersItemDataProductGroup_fk` FOREIGN KEY (`ProductGroup`) REFERENCES `data_platform_product_group_product_group_data` (`ProductGroup`),
    CONSTRAINT `DataPlatformOrdersItemDataBaseUnit_fk` FOREIGN KEY (`BaseUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformOrdersItemDataDeliverToPlantTimeZone_fk` FOREIGN KEY (`DeliverToPlantTimeZone`) REFERENCES `data_platform_time_zone_time_zone_data` (`TimeZone`),
    CONSTRAINT `DataPlatformOrdersItemDataDeliverToPlantStorageLocation_fk` FOREIGN KEY (`DeliverToParty`, `DeliverToPlant`, `DeliverToPlantStorageLocation`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformOrdersItemDataDeliverToPlantBatch_fk` FOREIGN KEY (`DeliverToParty`, `DeliverToPlant`, `DeliverToPlantBatch`) REFERENCES `data_platform_batch_master_record_batch_data` (`BusinessPartner`, `Plant`, `Batch`),
    CONSTRAINT `DataPlatformOrdersItemDataDeliverFromPlantTimeZone_fk` FOREIGN KEY (`DeliverFromPlantTimeZone`) REFERENCES `data_platform_time_zone_time_zone_data` (`TimeZone`),
    CONSTRAINT `DataPlatformOrdersItemDataDeliverFromPlantStorageLocation_fk` FOREIGN KEY (`DeliverFromParty`, `DeliverFromPlant`, `DeliverFromPlantStorageLocation`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`, `StorageLocation`),
    CONSTRAINT `DataPlatformOrdersItemDataDeliverFromPlantBatch_fk` FOREIGN KEY (`DeliverFromParty`, `DeliverFromPlant`, `DeliverFromPlantBatch`) REFERENCES `data_platform_batch_master_record_batch_data` (`BusinessPartner`, `Plant`, `Batch`),
    CONSTRAINT `DataPlatformOrdersItemDataDeliveryUnit_fk` FOREIGN KEY (`DeliveryUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformOrdersItemDataStockConfirmationPlantTimeZone_fk` FOREIGN KEY (`StockConfirmationPlantTimeZone`) REFERENCES `data_platform_time_zone_time_zone_data` (`TimeZone`),
    CONSTRAINT `DataPlatformOrdersItemDataStockConfirmationPlantBatch_fk` FOREIGN KEY (`Product`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`, `StockConfirmationPlantBatch`) REFERENCES `data_platform_batch_master_record_data` (`Product`, `BusinessPartner`, `Plant`, `Batch`),
    CONSTRAINT `DataPlatformOrdersItemDataItemWeightUnit_fk` FOREIGN KEY (`ItemWeightUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformOrdersItemDataItemInternalCapacityQuantityUnit_fk` FOREIGN KEY (`InternalCapacityQuantityUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformOrdersItemDataProductionPlantTimeZone_fk` FOREIGN KEY (`ProductionPlantTimeZone`) REFERENCES `data_platform_time_zone_time_zone_data` (`TimeZone`),
    CONSTRAINT `DataPlatformOrdersItemDataProductionPlantBatch_fk` FOREIGN KEY (`ProductionPlantBusinessPartner`, `ProductionPlant`, `ProductionPlantBatch`) REFERENCES `data_platform_batch_master_record_batch_data` (`BusinessPartner`, `Plant`, `Batch`),
    CONSTRAINT `DataPlatformOrdersItemDataInspectionPlan_fk` FOREIGN KEY (`InspectionPlan`) REFERENCES `data_platform_inspection_plan_header_data` (`InspectionPlan`),
    CONSTRAINT `DataPlatformOrdersItemDataInspectionPlant_fk` FOREIGN KEY (`InspectionPlant`) REFERENCES `data_platform_plant_general_data` (`Plant`),
    CONSTRAINT `DataPlatformOrdersItemDataIncoterms_fk` FOREIGN KEY (`Incoterms`) REFERENCES `data_platform_incoterms_incoterms_data` (`Incoterms`),
    CONSTRAINT `DataPlatformOrdersItemDataPaymentMethod_fk` FOREIGN KEY (`PaymentMethod`) REFERENCES `data_platform_payment_method_payment_method_data` (`PaymentMethod`),
    CONSTRAINT `DataPlatformOrdersItemDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DataPlatformOrdersItemDataTaxCode_fk` FOREIGN KEY (`TaxCode`) REFERENCES `data_platform_tax_code_tax_code_data` (`TaxCode`),
    CONSTRAINT `DataPlatformOrdersItemDataCountryOfOrigin_fk` FOREIGN KEY (`CountryOfOrigin`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DataPlatformOrdersItemDataCountryOfOriginLanguage_fk` FOREIGN KEY (`CountryOfOriginLanguage`) REFERENCES `data_platform_language_language_data` (`Language`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
