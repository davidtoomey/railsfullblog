class User < ActiveRecord::Base

has_many :posts, dependent: :destroy
has_many :comments
validates_uniqueness_of :username

end
