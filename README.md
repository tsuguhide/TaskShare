# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# テーブル設計

## users テーブル(devise)


| Column               | Type   | Options     |
| -------------------- | ------ | ----------- |
| nick_name            | string | null: false |


### Association

- has_many :tasks
- has_one :records

## tasks テーブル


| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| title_detail       | text       |                                |
| category_id        | integer    | null: false                    |
| category_detail    | string     |                                |
| task               | string     | null: false                    |
| task_memo          | text       |                                |


### Association

- belongs_to :user
- belongs_to :records

## records テーブル


| Column             | Type       | Options                         |
| ------------------ | ---------- | ------------------------------- |
## 継続記録スタンプ
| task_record        | intger     | null: false                     |
## 達成タスク数
| task_clear         | integer    | null: false                     |
## 努力の成果
| status             | intger     | null: false                     |


### Association

- belongs_to :user
- has_many :tasks
