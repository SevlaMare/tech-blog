class ArticlesController < ApplicationController
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
  end

  # --- DELETE ---
  def destoy
  end
  
  # --- UPDATE ---
  def edit
  end

  def update
  end
end
