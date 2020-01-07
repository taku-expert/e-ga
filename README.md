# README


### userテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|admin|boolean|default: false|
|email|string|null: false|
|password|string|null: false|
|encrypted_password|string|null: false|
|age|integer|null: false|
|gendder|string|null: false|
|favoritegenre_id|integer|null: false|


### Association
- has_many :comments
- has_many :movies


### moviesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|screening_time|string|null: false|
|detail|text|null: false|
|director|string|null: false|
|starring|string|null: false|
|year|integer|null: false|
|genre_id|integer|null: false|
|rating_status|string|

### Association
- has_many :comments
- belongs_to :user

### commentテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text|null: false|
|evaluate|rate|float, null:false|
|movie_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :movie
- belongs_to :user