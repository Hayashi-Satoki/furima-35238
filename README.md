# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| family_name        | string | null: false               |
| first_name         | string | null: false               |
| family_name_kana   | string | null: false               |
| first_name_kana    | string | null: false               |
| birthday           | date   | null: false               |

### Association

- has_many :items
- has_many :purchases

## items テーブル

| Column        | Type      | Options                        |
| ------------- | --------- | ------------------------------ |
| name          | string    | null: false                    |
| description   | text      | null: false                    |
| category_id   | integer   | null: false                    |
| condition     | integer   | null: false                    |
| shipping_fee  | integer   | null: false                    |
| shipping_area | integer   | null: false                    |
| required_day  | integer   | null: false                    |
| price         | integer   | null: false                    |
| users         | reference | null: false, foreign_key: true |


### Association

- belongs_to :user
- has_one :purchase

## purchases テーブル

| Column    | Type      | Options                        |
| --------- | --------- | ------------------------------ |
| buyer     | string    | null: false                    |
| users     | reference | null: false, foreign_key: true |
| items     | reference | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## addresses テーブル

| Column     | Type      | Options                        |
| ---------- | --------- | ------------------------------ |
| post_code  | string    | null: false                    |
| prefecture | integer   | null: false                    |
| city       | string    | null: false                    |
| street     | string    | null: false                    |
| building   | string    |                                |
| phone      | string    | null: false                    |
| purchases  | reference | null: false, foreign_key: true |



### Association

 - belongs_to :purchase
