# README

# テーブル設計

## users テーブル

| Column          | Type   | Options                   |
| --------------- | ------ | ------------------------- |
| nickname        | string | null: false               |
| email           | string | null: false, unique: true |
| password        | string | null: false               |
| first_name      | string | null: false               |
| last_name       | string | null: false               |
| first_name_kana | string | null: false               |
| last_name_kana  | string | null: false               |
| birth_date      | string | null: false               |

### Association
- has_many :items
- has_many :orders


## items テーブル

| Column              | Type       | Options                       |
| ------------------- | ---------- | ----------------------------- |
| name                | string     | null:false                    |
| info                | text       | null:false                    |
| category            | integer    | null:false                    |
| sales_status        | integer    | null:false                    |
| shipping_fee_status | integer    | null:false                    |
| prefecture          | integer    | null:false                    |
| scheduled_delivery  | integer    | null:false                    |
| price               | integer    | null:false                    |
| user                | references | null:false, foreign_key: true |

### Association
- belongs_to :user
- has_one :order


## orders テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item


## addresses テーブル

| Column       | Type    | Options                       |
| ------------ | ------- | ----------------------------- |
| postal_code  | string  | null:false                    |
| prefecture   | integer | null:false                    |
| city         | string  | null:false                    |
| address      | string  | null:false                    |
| phone_number | string  | null:false                    |
| order_id     | integer | null:false, foreign_key: true |
（ここに追記していく）

### Association
- belongs_to :order