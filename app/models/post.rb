class Post < ApplicationRecord
  validates :title, presence: true
  belongs_to :blog
end
