class ArticlesController < ApplicationController
  include ArticlesHelper

  def index
    @articles = Article.all
  end

  # --- READ ---
  def show
    @article = Article.find(params[:id])
  end

  # --- CREATE ---
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end

  # --- DELETE ---
  def destroy
    @article = Article.find(params[:id])      
    @article.destroy
    redirect_to articles_path(@articles)
  end
  
  # --- UPDATE ---
  def edit
  end

  def update
  end
end
