class ArticlesController < ApplicationController
  def index
    articles = Article.all
    render json: articles
  end

  def show
    render json: 'show'
  end
end
