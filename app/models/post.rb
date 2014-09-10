class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :topic
	
	validates :summary, presence: true
	validates :summary, length: {maximum: 300}
	

	
end
