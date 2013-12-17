class Topic < ActiveRecord::Base
	
	validates :question, :description, :starttime, :length, :groupsize, :presence => true

	belongs_to :user
	mount_uploader :topic_pic, TopicPicUploader
end
