class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :relations, foreign_key: :follow_id

  has_many :tweets

  def follow_user(user)
    Relation.find_by(follow_id: user.id).present?
  end
end
