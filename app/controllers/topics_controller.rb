class TopicsController < ApplicationController
before_action: authenticate_user!, only: [:new, :create]

	def new
		@topic = Topic.order(:name)
	end

	def create
		safe_topic = params.require(:topic).permit(:question, :description, :timestamp, :timeframe, :groupsize, :image)
		@topic = Topic.new(safe_topic)
		@topic.user = current_user

		if @topic.save
			redirect_to topic_path(@topic)
		else
			render :new
		end
	end

	def show
		@topic = Topic.find params[:id]
	end
end
