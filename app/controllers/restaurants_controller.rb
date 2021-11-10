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
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save # if validation is ok and restaurant saves, goes to line 17
      redirect_to restaurant_path(@restaurant) # redirects to the new restaurant
    else # if something wrong with validation, render returns you to the new page/method
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number) # reviews too??
  end
end
