class User < ActiveRecord::Base


has_many :posts, dependent: :destroy
has_many :comments
validates_presence_of :email
validates_uniqueness_of :username
validates_uniqueness_of :email

validates :username, length: {minimum: 4, maximum: 30}
validates :email, length: {minimum: 1}
validates :password, confirmation:true, presence:true


end
