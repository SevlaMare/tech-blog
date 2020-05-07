class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :taggings
  has_many :tags, though: :taggings
end
