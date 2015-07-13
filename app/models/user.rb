class User < ActiveRecord::Base
 
def append_random_id     
  user.username = user.username + (rand*10000).ceil 
end


has_many :posts, dependent: :destroy
has_many :comments
validates_presence_of :email
validates_uniqueness_of :username
validates_uniqueness_of :email

scope :signed_in_today, -> {   where('last_sign_in between ? and ?', Time.now-1.day, Time.now) }

end
