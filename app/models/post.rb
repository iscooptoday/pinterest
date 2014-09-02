class Post < ActiveRecord::Base
	belongs_to :user
	
	validates :title, presence: true
	validates :title, length: {maximum: 300}
	

	
end
