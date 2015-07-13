class User < ActiveRecord::Base


has_many :posts, dependent: :destroy
has_many :comments
validates_presence_of :email
validates_uniqueness_of :username
validates_uniqueness_of :email



end
