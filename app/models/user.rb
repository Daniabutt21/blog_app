class User < ApplicationRecord
  has_many :authored_articles, class_name: "Article", foreign_key: "author_id", dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
end
