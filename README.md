## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|integer|index: true, null:false, unique:true|
|mail|integer|null: false,|
|password|integer|null:false|
### Association
- has_many:groups,through: :groups_users
- has_many:message
- has_many:groups_users

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|integer|index: true, null:false, unique:true|
### Association
- has_many:user, through: :groups_users
- has_many:message
- has_many:groups_users

##messageテーブル

|Column|Type|Options|
|------|----|-------|
|body|integer|null: false|
|image|integer|null: false|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :users
- belongs_to :groups

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :groups
- belongs_to :users


