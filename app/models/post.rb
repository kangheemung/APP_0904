class Post < ApplicationRecord
 belongs_to :user
 validates :user_id, prssence: true
 validates :content, prssence: true, length: {maximum: 140}

end
