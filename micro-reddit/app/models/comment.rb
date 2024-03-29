class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :body, :user_id, :post_id, presence: true

  validates :body, length: {in: 5..150}
end
