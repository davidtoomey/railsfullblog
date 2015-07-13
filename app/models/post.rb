class Post < ActiveRecord::Base
belongs_to :user
has_many :comments, dependent: :destroy
scope :signed_in_today, -> {   where('last_sign_in between ? and ?', Time.now-1.day, Time.now) }

end
