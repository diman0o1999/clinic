class ArticlesController < ApplicationController
  def index
    @article = Article.new
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Статья добавлена!"
      redirect_to articles_path
    else
      @article_title = params[:article][:title]
      @article_description = params[:article][:description]
      @article_text = params[:article][:text]
      render 'index'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :description, :text)
  end

end
