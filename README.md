# README

# アプリケーション名
出会ったお酒を記録するアプリ

# アプリケーションの概要
出会ったお酒を写真と共に記録する。コレクションとしても残す事が出来る。

# URL

# テスト用アカウント
・Basic認証パスワード：space
・Basic認証ID：40230

# 利用方法
## マイページ
ログインしたユーザー本人しか見れない、マイページの仕様にしている
## 投稿
1,一覧ページのPOSTボタンから投稿ができる
2,内容(お酒の種類、名前、特徴、画像の投稿)を入力し登録する
3,詳細ページから編集、削除が可能
## カテゴリー別で表示
写真が埋れてしまい見つけれない事を防ぐ為、カテゴリー別でサイドバーから選択し絞って表示ができる

# アプリケーションを作成した背景
美味しいお酒に出会っても思い出したいタイミングで忘れてしまい思い出せなかったり、写真は撮ったが写真ホルダーで埋れてしまって見つけられない事がよくありました。好きな物をコレクションとして残しながら必要な時に探せるアプリがあれば便利だなと考え作成を行いました。

# 実装の予定の機能
検索の機能の追加
JavaScriptを使用しフロントの装飾

# データベース設計

# 開発環境
・フロントエンド
・バックエンド
・インフラ
・テスト
・テキストエディタ
・タスク管理


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
| category_id    | integer    | null: false                    |
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