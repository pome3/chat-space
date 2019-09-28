## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|integer|index: true, null:false, unique:true|
|mail|integer|null: false,|
|password|integer|null:false|
### Association
- has_many:groups,through:members
- has_many:message
- has_many:members

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|integer|index: true, null:false, unique:true|
### Association
- has_many:user
- has_many:message


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


##membersテーブル

|Column|Type|Options|
|------|----|-------|
|name|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- has_many :users
- belongs_to :groups

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

##member_usersテーブル

Column|Type|Options|
|------|----|-------|
|name|integer|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :member
- belongs_to :user
