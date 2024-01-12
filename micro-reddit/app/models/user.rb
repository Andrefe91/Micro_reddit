class User < ApplicationRecord
  validates :username, :email, :password, presence: true

  validates :username, length: {in: 5..25}, uniqueness: true
  validates :email, length: {in: 5..40}, uniqueness: true
  validates :password, length: {in: 8..16}
end
