# data-platform-orders-sql 

data-platform-orders-sql は、データ連携基盤において、オーダーデータを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-orders-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-orders-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-orders-sql-header-data.sql（データ連携基盤 オーダー - ヘッダデータ）
* data-platform-orders-sql-header-doc-data.sql（データ連携基盤 オーダー - ヘッダ文書データ）
* data-platform-orders-sql-header-supply-chain-relationship-data.sql（データ連携基盤 オーダー - ヘッダサプライチェーンリレーションシップデータ）
* data-platform-orders-sql-item-data.sql（データ連携基盤 オーダー - 明細データ）  
* data-platform-orders-sql-item-supply-chain-relationship-data.sql（データ連携基盤 オーダー - 明細サプライチェーンリレーションシップデータ）  
* data-platform-orders-sql-item-pricing-element-data.sql（データ連携基盤 オーダー - 明細価格決定要素データ）  
* data-platform-orders-sql-item-schedule-line-data.sql（データ連携基盤 オーダー - 明細納入日程行データ）
* data-platform-orders-sql-address-data.sql（データ連携基盤 オーダー - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
