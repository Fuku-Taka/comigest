class Post < ApplicationRecord
  validates :content, presence: true
  validates :title, presence: true

  belongs_to :user
  has_many :comments

  def self.search(search)
    return Post.all unless search
    Post.where('title LIKE(?)', "%#{search}%")
  end
end
