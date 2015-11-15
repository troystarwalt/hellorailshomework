class User < ActiveRecord::Base
	has_attached_file :avatar, { styles: { 
		:medium => "300x300>", 
		:thumb => "100x100>" }, 
		:default_url => "/images/:style/missing.png" }
		validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	validates :email, presence: true, uniqueness: true
	validates :password, :length => { :minimum => 6 }
	validates :username, presence: true

end
