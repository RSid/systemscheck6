class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all

  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant_id: params[:id])
  end

  def new
    @restaurant = Restaurant.new()
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def mini
    @recent_ten = Restaurant.last(10).reverse
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :zip, :description, :category)
  end

end
