class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, lentgh: { minimum: 10}
end
