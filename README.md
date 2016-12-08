#DB 設計

##users テーブル
###culumn
  - id :integer
  - name :string
  - email :string

###association
  - has_many :tweets
  - has_many :favorites
  - has_many :groups, through :relation_group
  - has_many :follows


##tweets テーブル
###culumn
  - id :integer
  - user_id :integer
  - text :text

###association
  - belongs_to :user
  - has_many :tweet_images
  - has_many :comments
  - has_many :favorites


##tweet_images テーブル
###culumn
  - id :integer
  - tweet_id :integer
  - image :text

###association
  - belongs_to :tweet


##follows テーブル
###culumn
  - id :integer
  - user_id :integer
  - follow_id :integer

###association
  - belongs_to :user


##comments テーブル
###culumn
  - id :integer
  - user_id :integer
  - tweet_id :integer
  - comment :text

###association
  - belongs_to :tweet


##groups テーブル
###culumn
  - id :integer
  - group_name :text

###association
  - has_many :user, through :relation_group


##relation_group テーブル
###culumn
  - id :integer
  - group_id :integer
  - user_id :integer

###association
  - belongs_to :group
  - belongs_to :user


##favorites テーブル
###culumn
  - id :integer
  - user_id :integer
  - tweet_id :integer

###association
  - belongs_to :tweet

