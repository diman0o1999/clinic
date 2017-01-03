class ReviewsController < ApplicationController

  def index
    @review = Review.new
    #все отзывы упорядочены по дате
    @reviews = User.joins(:reviews).order('created_at DESC').select(
        'users.id',
        'users.surname',
        'users.patronymic',
        'users.user_name',
        'reviews.created_at',
        'reviews.text_reviews',
        'reviews.status_review',
        'reviews.id'
    )
  end

  def create

    #публикуем отзыв
    if params[:public_btn]
      #id отзыва, который правим
      @review_public = Review.find_by(id: params[:review][:review_id])
      if @review_public.update_attributes(:status_review => 1)
        flash[:success] = "Опубликован!"
        redirect_to reviews_path
      else
        render 'index'
      end

    #убираем с публикации отзыв
    elsif params[:nopublic_btn]
      #id отзыва, который правим
      @review_public = Review.find_by(id: params[:review][:review_id])
      if @review_public.update_attributes(:status_review => 0)
        flash[:success] = "Снят с публикации!"
        redirect_to reviews_path
      else
        render 'index'
      end

    else
      @review = Review.new(review_params)
      if @review.save
        flash[:success] = "Отзыв на модерации!"
        redirect_to reviews_path
      else
        @text_reviews = params[:review][:text_reviews]
        render 'index'
      end

    end



  end


  private

  def review_params
    params.require(:review).permit(:user_id, :text_reviews)
  end

end