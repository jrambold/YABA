class User < ApplicationRecord
  validates :password, presence: true
  validates :username, presence: true, uniqueness: true
  has_secure_password
  has_one :blog, dependent: :destroy
  has_many :posts, through: :blog

  after_create :make_blog

  private
    def make_blog
      blog = Blog.new(name: "#{self.username}'s Blog", user_id: self.id)
      blog.save()
    end
end
