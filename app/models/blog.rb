class Blog < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :blog
  has_many :posts, dependent: :destroy
end
