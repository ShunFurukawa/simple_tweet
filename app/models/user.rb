class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # has_many :relations, class_name:"Relation", dependent: :destroy


  has_many :relations, foreign_key: :follow_id

  # has_many :followed, through: :relations


end
