class Post < ActiveRecord::Base
	belongs_to :user
	validates :summary, presence: true
	validates :source, presence: true
end
