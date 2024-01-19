CREATE TABLE `data_platform_orders_header_data`
(
  `OrderID`                          int(16) NOT NULL,
  `OrderDate`                        date NOT NULL,
  `OrderType`                        varchar(3) NOT NULL,
  `OrderStatus`                      varchar(3) NOT NULL,
  `SupplyChainRelationshipID`        int(16) NOT NULL,
  `SupplyChainRelationshipBillingID` int(4) DEFAULT NULL,
  `SupplyChainRelationshipPaymentID` int(2) DEFAULT NULL,
  `Buyer`                            int(12) NOT NULL,
  `Seller`                           int(12) NOT NULL,
  `BillToParty`                      int(12) DEFAULT NULL,
  `BillFromParty`                    int(12) DEFAULT NULL,
  `BillToCountry`                    varchar(3) DEFAULT NULL,
  `BillFromCountry`                  varchar(3) DEFAULT NULL,
  `Payer`                            int(12) DEFAULT NULL,
  `Payee`                            int(12) DEFAULT NULL,
  `ContractType`                     varchar(4) DEFAULT NULL,
  `OrderValidityStartDate`           date DEFAULT NULL,
  `OrderValidityEndDate`             date DEFAULT NULL,
  `InvoicePeriodStartDate`           date DEFAULT NULL,
  `InvoicePeriodEndDate`             date DEFAULT NULL,
  `TotalNetAmount`                   float(13) NOT NULL,
  `TotalTaxAmount`                   float(13) NOT NULL,
  `TotalGrossAmount`                 float(13) NOT NULL,
  `HeaderDeliveryStatus`             varchar(2) NOT NULL,
  `HeaderBillingStatus`              varchar(2) NOT NULL,
  `HeaderDocReferenceStatus`         varchar(2) NOT NULL,
  `TransactionCurrency`              varchar(5) NOT NULL,
  `PricingDate`                      date NOT NULL,
  `PriceDetnExchangeRate`            float(8) DEFAULT NULL,
  `RequestedDeliveryDate`            date NOT NULL,
  `RequestedDeliveryTime`            time NOT NULL,
  `HeaderCompleteDeliveryIsDefined`  tinyint(1) DEFAULT NULL,
  `Incoterms`                        varchar(4) DEFAULT NULL,
  `PaymentTerms`                     varchar(4) NOT NULL,
  `PaymentMethod`                    varchar(1) NOT NULL,
  `Contract`                         int(16) DEFAULT NULL,
  `ContractItem`                     int(6) DEFAULT NULL,
  `ProductionVersion`                int(16) DEFAULT NULL,
  `ProductionVersionItem`            int(6) DEFAULT NULL,
  `ProductionOrder`                  int(16) DEFAULT NULL,
  `ProductionOrderItem`              int(6) DEFAULT NULL,
  `Operations`                       int(16) DEFAULT NULL,
  `OperationsItem`	                 int(6) DEFAULT NULL,
  `OperationID`                      int(4) DEFAULT NULL,
  `ReferenceDocument`                int(16) DEFAULT NULL,
  `ReferenceDocumentItem`            int(6) DEFAULT NULL,
  `AccountAssignmentGroup`           varchar(2) NOT NULL,
  `AccountingExchangeRate`           float(8) DEFAULT NULL,
  `InvoiceDocumentDate`              date NOT NULL,
  `IsExportImport`                   tinyint(1) DEFAULT NULL,
  `HeaderText`                       varchar(200) DEFAULT NULL,
  `HeaderBlockStatus`                tinyint(1) DEFAULT NULL,
  `HeaderDeliveryBlockStatus`        tinyint(1) DEFAULT NULL,
  `HeaderBillingBlockStatus`         tinyint(1) DEFAULT NULL,
  `ExternalReferenceDocument`        varchar(100) DEFAULT NULL,
  `CertificateAuthorityChain`        varchar(2000) DEFAULT NULL,
  `UsageControlChain`                varchar(2000) DEFAULT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,
  `IsCancelled`                      tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`OrderID`),

    CONSTRAINT `DPFMOrdersHeaderDataSCRID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `Buyer`, `Seller`) REFERENCES `data_platform_scr_general_data` (`SupplyChainRelationshipID`, `Buyer`, `Seller`),
    CONSTRAINT `DPFMOrdersHeaderDataSCRBillingID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipBillingID`, `Buyer`, `Seller`, `BillToParty`, `BillFromParty`) REFERENCES `data_platform_scr_billing_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipBillingID`, `Buyer`, `Seller`, `BillToParty`, `BillFromParty`),
    CONSTRAINT `DPFMOrdersHeaderDataSCRPaymentID_fk` FOREIGN KEY (`SupplyChainRelationshipID`, `SupplyChainRelationshipBillingID`, `SupplyChainRelationshipPaymentID`, `Buyer`, `Seller`, `BillToParty`, `BillFromParty`, `Payer`, `Payee`) REFERENCES `data_platform_scr_payment_relation_data` (`SupplyChainRelationshipID`, `SupplyChainRelationshipBillingID`, `SupplyChainRelationshipPaymentID`, `Buyer`, `Seller`, `BillToParty`, `BillFromParty`, `Payer`, `Payee`),
    CONSTRAINT `DPFMOrdersHeaderDataBillToCountry_fk` FOREIGN KEY (`BillToCountry`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DPFMOrdersHeaderDataBillFromCountry_fk` FOREIGN KEY (`BillFromCountry`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DPFMOrdersHeaderDataTransactionCurrency_fk` FOREIGN KEY (`TransactionCurrency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DPFMOrdersHeaderDataIncoterms_fk` FOREIGN KEY (`Incoterms`) REFERENCES `data_platform_incoterms_incoterms_data` (`Incoterms`),
    CONSTRAINT `DPFMOrdersHeaderDataPaymentTerms_fk` FOREIGN KEY (`PaymentTerms`) REFERENCES `data_platform_payment_terms_payment_terms_data` (`PaymentTerms`),
    CONSTRAINT `DPFMOrdersHeaderDataPaymentMethod_fk` FOREIGN KEY (`PaymentMethod`) REFERENCES `data_platform_payment_method_payment_method_data` (`PaymentMethod`),
    CONSTRAINT `DPFMOrdersHeaderDataContract_fk` FOREIGN KEY (`Contract`) REFERENCES `data_platform_contract_header_data` (`Contract`),
    CONSTRAINT `DPFMOrdersHeaderDataContractItem_fk` FOREIGN KEY (`Contract`, `ContractItem`) REFERENCES `data_platform_contract_item_data` (`Contract`, `ContractItem`),
    CONSTRAINT `DPFMOrdersHeaderDataProductionVersionItem_fk` FOREIGN KEY (`ProductionVersion`, `ProductionVersionItem`) REFERENCES `data_platform_production_version_item_data` (`ProductionVersion`, `ProductionVersionItem`),
    CONSTRAINT `DPFMOrdersHeaderDataProductionOrderItem_fk` FOREIGN KEY (`ProductionOrder`, `ProductionOrderItem`) REFERENCES `data_platform_production_order_item_data` (`ProductionOrder`, `ProductionOrderItem`),
    CONSTRAINT `DPFMOrdersHeaderDataProductionOrderItemOperation_fk` FOREIGN KEY (`ProductionOrder`, `ProductionOrderItem`, `Operations`, `OperationsItem`, `OperationID`) REFERENCES `data_platform_production_order_item_operation_data` (`ProductionOrder`, `ProductionOrderItem`, `Operations`, `OperationsItem`, `OperationID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
