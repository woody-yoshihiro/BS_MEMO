class User < ApplicationRecord
  validates :name,     {presence: true}
  validates :email,    {presence: true, uniqueness: true}
  validates :password, {presence: true}

  has_many :posts

  def posts
    return Post.where(user_id: self.id)
  end

end