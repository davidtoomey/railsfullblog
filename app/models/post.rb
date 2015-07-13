class Post < ActiveRecord::Base
belongs_to :user
has_many :comments, dependent: :destroy

validates :content, length: {minimum: 1, maximum: 150}
end
