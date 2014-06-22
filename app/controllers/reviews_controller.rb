class ReviewsController < ApplicationController
  def index

  end

  def show

  end

  def new
    #binding.pry
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new()
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    binding.pry
    @review = Review.new(body: params['review']['body'], rating: params['review']['rating'],restaurant_id: params['restaurant_id'])

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

end
