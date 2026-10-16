class User < ApplicationRecord
  has_many :tweets
  validates :uid, uniqueness: true
end