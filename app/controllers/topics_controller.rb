  class TopicsController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create]

	def index
		@topic = Topic.all 
	end

	def new
		@topic = Topic.new
	end

	def create
		safe_topic = params.require(:topic).permit(:question, :description, :starttime, :length, :groupsize)
		@topic = Topic.new(safe_topic)
		@topic.user = current_user

		if @topic.save
			redirect_to topic_path(@topic)
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @topic.update(safe_topic)
			redirect_to @topic
		else
			render 'edit'
		end
	end

	def show
		@topic = Topic.find params[:id]
	end

	
end
