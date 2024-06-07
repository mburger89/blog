class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  has_rich_text :content
  validates :body, presence: true, length: { minimum: 10}
end
