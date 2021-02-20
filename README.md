# README

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------  | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| last_name          | string  | null: false |
| first_name         | string  | null: false |
| kana_last_name     | string  | null: false |
| kana_fist_name     | string  | null: false |
| birth_date         | date    | null: false |

### Association
- has_many :my_favorite_spots
- has_many :reviews


## spots テーブル

| Column             | Type    | Options     |
| ------------------ | ------  | ----------- |
| shop_name          | string  | null: false |
| genre_id           | integer | null: false |
| address            | string  | null: false |
| phone_number       | string  | null: false |
| opening_hours      | string  | null: false |
| non_business_day   | string  | null: false |
| latitude           | decimal | 
| longitude          | decimal | 

### Association
- has_many :reviews
- has_many :my_favorite_spots


## reviews テーブル

| Column             | Type    | Options     |
| ------------------ | ------  | ----------- |
| overall_evaluation | float   | null: false |
| comment            | text    | null: false |
| atmosphere         | float   | null: false |
| facility           | float   | null: false |
| congestion         | float   | null: false |
| countermeasure     | float   | null: false |
| client             | integer | null: false |
| user               | references  | null: false |
| spot               | references  | null: false |

### Association
- belongs_to :user
- belongs_to :spot


## my_favorite_spots テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| spot               | references | null: false |
| user               | references | null: false |

### Association
- belongs_to :user
- belongs_to :spot