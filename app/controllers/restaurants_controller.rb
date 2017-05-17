class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    # @restaurant = restaurant.find(params[:id])
    set_restaurant
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = restaurant.create(restaurant_params)
    redirect_to restaurant_path(restaurant)
  end

  def edit
    # @restaurant = restaurant.find(params[:id])
    set_restaurant
  end

  def update
    # @restaurant = restaurant.find(params[:id])
    set_restaurant
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    # @restaurant = restaurant.find(params[:id])
    set_restaurant
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def top
    @restaurants = Restaurant.where(stars: 3)
  end

  def autor


  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:title, :content, :autor)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params["id"])
  end

end
