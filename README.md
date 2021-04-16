# テーブル設計

## users テーブル

| Column           | Type   | Options                   |
| ---------------- | ------ | ------------------------- |
| nickname         | string | null: false               |
| email            | string | null: false, unique: true |
| password         | string | null: false               |
| family_name      | string | null: false               |
| first_name       | string | null: false               |
| family_name_kana | string | null: false               |
| first_name_kana  | string | null: false               |
| birthday         | string | null: false               |

### Association

- has_many :items
- has_many :purchases

## items テーブル

| Column        | Type      | Options     |
| ------------- | --------- | ----------- |
| image         | string    | null: false |
| title         | string    | null: false |
| description   | text      | null: false |
| category      | string    | null: false |
| condition     | string    | null: false |
| shipping_fee  | string    | null: false |
| shipping_area | string    | null: false |
| required_day  | string    | null: false |
| price         | string    | null: false |

### Association

- belongs_to :users
- has_one :purchases

## purchases テーブル

| Column    | Type      | Options                        |
| --------- | --------- | ------------------------------ |
| buyer     | string    | null: false                    |
| items_id  | reference | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :items
- has_one :addresses

## addresses テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| post_code  | string | null: false |
| prefecture | string | null: false |
| city       | string | null: false |
| street     | string | null: false |
| building   | string |             |
| phone      | string | null: false |


### Association

 - belongs_to :purchases
