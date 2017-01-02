class ReviewsController < ApplicationController

  def index
    @review = Review.new
    #все отзывы упорядочены по дате
    @reviews = User.joins(:reviews).order('created_at DESC').select('users.id', 'users.surname', 'users.patronymic', 'users.user_name', 'reviews.created_at', 'reviews.text_reviews')
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      flash[:success] = "Отзыв добавлен!"
      redirect_to reviews_path
    else
      @text_reviews = params[:review][:text_reviews]
      render 'index'
    end
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :text_reviews)
  end

end