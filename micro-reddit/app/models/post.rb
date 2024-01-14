class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  validates_associated :comments

  validates :title, :body, :user_id, presence: true

  validates :title, length: {in: 5..150}
  validates :body, length: {in: 5..500}
end
