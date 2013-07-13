class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user    # Indicates association with User
  default_scope order: 'microposts.created_at DESC'
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
