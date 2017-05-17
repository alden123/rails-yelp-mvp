class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    # @review = review.find(params[:id])
    set_review
  end

  def new
    @review = Review.new
  end

  def create
    review = review.create(review_params)
    redirect_to review_path(review)
  end

  def edit
    # @review = review.find(params[:id])
    set_review
  end

  def update
    # @review = review.find(params[:id])
    set_review
    @review.update(review_params)
    redirect_to review_path(@review)
  end

  def destroy
    # @review = review.find(params[:id])
    set_review
    @review.destroy
    redirect_to reviews_path
  end

  def top
    @reviews = Review.where(stars: 3)
  end

  def autor


  end


  private

  def review_params
    params.require(:review).permit(:title, :content, :autor)
  end

  def set_review
    @review = Review.find(params["id"])
  end



end
