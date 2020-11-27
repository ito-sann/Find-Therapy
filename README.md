# アプリケーション名
Find-Therapy

# アプリケーション概要
Find-therapyは、東京23区にあるペットカフェを検索、閲覧ができる、動物とあなたをつなぐアプリケーションです。
# URL
準備中
# 利用方法
新規登録、ログインまたは簡単ログインが必須となっており、これらをすることでページの閲覧、投稿や編集、コメント投稿、いいねを行えます。
# 目指した課題解決
東京でペット相談可の賃貸は全体のおよそ２割程になっていることから、東京への移住とともに慣れ親しんだペットと離れ、孤独を経験する方が多いのではと考えました。そこで東京にあるペットカフェを探すことができるポータルサイトのようなものがあればそのような方の孤立感を軽減できるのではと考えております
# 洗い出した要件

# 実装した機能についてのGIFと説明

# 実装予定の機能

# データベース設計
# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
|  name    | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| profile  | text   | null: false |                           


### Association

- has_many :stores
- has_many :comments
- has_many :likes




## stores テーブル

| Column    | Type        | Options                       |
| ------    | ----------  | ----------------------        |
|   name    | string      | null: false                   |
| image     |ActiveStorage|                               |
|description| text        | null: false                   |
|animal_id  | integer     | null: false                   |
|region_id  | integer     | null: false                   |
| address   | string      | null: false                   |
| user      | references  | null: false, foreign_key: true|            

### Association

- belongs_to :user
- has_many   :comments
- has_many   :likes





## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| cafe    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :store





## likes テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| cafe    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :store
