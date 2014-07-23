class Post < ActiveRecord::Base
	belongs_to :user
	validates :summary, presence: true
	validates :summary, length: {maximum: 500}
	validates :source, presence: true
end
