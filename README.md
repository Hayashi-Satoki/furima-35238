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

| Column           | Type      | Options                        |
| ---------------- | --------- | ------------------------------ |
| name             | string    | null: false                    |
| description      | text      | null: false                    |
| category_id      | integer   | null: false                    |
| condition_id     | integer   | null: false                    |
| shipping_fee_id  | integer   | null: false                    |
| prefecture_id    | integer   | null: false                    |
| required_day_id  | integer   | null: false                    |
| price            | integer   | null: false                    |
| user             | reference | null: false, foreign_key: true |


### Association

- belongs_to :user
- has_one :purchase

## purchases テーブル

| Column    | Type      | Options                        |
| --------- | --------- | ------------------------------ |
| user      | reference | null: false, foreign_key: true |
| item      | reference | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## addresses テーブル

| Column        | Type      | Options                        |
| ------------- | --------- | ------------------------------ |
| post_code     | string    | null: false                    |
| prefecture_id | integer   | null: false                    |
| city          | string    | null: false                    |
| street        | string    | null: false                    |
| building      | string    |                                |
| phone         | string    | null: false                    |
| purchase      | reference | null: false, foreign_key: true |



### Association

 - belongs_to :purchase