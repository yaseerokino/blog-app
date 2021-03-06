class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post

  def update_like_counter
    post.increment!(:likes_counter)
  end
end
