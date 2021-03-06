class SuccessesController < ApplicationController
	def new
		@success = Success.new
	end

	def create
		@success_story = Success.new(success_params)
		@success_story.save

		render 'show'
	end

	def update
		@success = Success.find(params[:id])
		@success.update(success_params)

		flash.notice = "Success story updated!"

		render 'show'
	end

	def edit
		@success = Success.find(params[:id])
	end

	def destroy
		@success = Success.find(params[:id])
		@success.destroy
		redirect_to root_path
	end

	def show
		begin
			@success = Success.find(params[:id])
		rescue
		end
	end
end
