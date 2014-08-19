class Post < ActiveRecord::Base
	belongs_to :user
	
	validates :title, presence: true
	validates :summary, presence: true
	validates :summary2, presence: true
	validates :summary3, presence: true
	validates :summary, length: {maximum: 90}
	validates :summary2, length: {maximum: 90}
	validates :summary3, length: {maximum: 90}
	validates :source, presence: true
end
