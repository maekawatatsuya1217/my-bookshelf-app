# README

##user

| Column        | Type   | Options  |
| ------------- | ------ | -------- |
| email         | string | NOT NULL |
| password      | string | NOT NULL |
| name          | string | NOT NULL |
| favorite_book | text   | NOT NULL |

 - has_many :blogs
 - has_many :comments

 ##blogs

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | NOT NULL                       |
| catch_copy | string     | NOT NULL                       |
| article    | text       | NOT NULL                       |
| user       | references | null: false, foreign_key: true |

- belongs_to :user
- has_many :comments


##comments

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | NOT NULL                       |
| user      | references | null: false, foreign_key: true |
| blog      | references | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :blog
