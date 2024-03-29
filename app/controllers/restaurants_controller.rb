class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	def new
		@restaurant = Restaurant.new

	end

	def create
		restaurant = Restaurant.new(restaurant_params)
		restaurant.save
		redirect_to root_path
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def update
		@restaurant = Restaurant.find(params[:id])
		@restaurant.update(restaurant_params)
		redirect_to root_path
	end

	def destroy
		restaurant = Restaurant.find(params[:id])
		restaurant.destroy
		redirect_to root_path
	end

	private
	def restaurant_params
	  params.require(:restaurant).permit(:name, :hours, :cuisine, :address, :photo_url, :average_rating)
	end

end