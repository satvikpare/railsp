class Post < ApplicationRecord
  validates :name, presence: true
  has_many :comments, as: :commentable, dependent: :destroy
  belongs_to :user
end