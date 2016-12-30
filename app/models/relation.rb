class Relation < ApplicationRecord
  belongs_to :follow, class_name: "User", counter_cache: :follow_count
  belongs_to :followed, class_name: "User", counter_cache: :follower_count
end
