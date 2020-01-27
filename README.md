# <h2 align="center">e-ga</h2>
<p>映画のレビューができるサイトです。</p>
<p align="center">
<a href="http://18.176.227.212/"><img src="https://user-images.githubusercontent.com/57390584/73147080-24673780-40f9-11ea-9caa-a5d67c130a33.png)" width="80px;" /></a>

<a><img src="https://user-images.githubusercontent.com/57390584/73147200-c38c2f00-40f9-11ea-93cf-fc8f55a074c1.png" width="80px;" /></a>

## 🐱開発環境
<p>Haml</p>
<p>Scss</p>
<p>RubyonRails</p>
<p>jquery</p>


## 🐊Github
`$ https://github.com/taku-expert/e-ga`

## DB設計

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
|rating_status|string|

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
|image|string|null: false|
|genre_id|integer|null: false|

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