class WelcomeController < ApplicationController
	before_action :redirect_if_logged_in

	def index
		@topics = Topic.all
	end

	private

	def redirect_if_logged_in
		if user_signed_in?
			redirect_to topics_path
		end
		end
	end
