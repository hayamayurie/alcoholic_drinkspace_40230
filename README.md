# README
#　テーブル設計

## users テーブル

| Column             | Type   | Options                       |
| ------------------ | ------ | ----------------------------- |
| email              | string | null: false, uniqueness: true |
| encrypted_password | string | null: false                   |
| nickname           | string | null: false                   |

### Association
has_many :alcohols
has_many :comments

## alcohols テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| alcohol_name   | string     | null: false                    |
| memo           | text       | null: false                    |
| condition_id   | integer    | null: false                    |
| user           | references | null: false, foreign_key: true |

### Association
belong_to :user
has_many :comments

## comments テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| text       | text       | null: false                    |
| tweet      | references | null: false, foreign_key: true |
| user       | references | null: false, foreign_key: true |

### Association
belong_to :alcohol
belong_to :user