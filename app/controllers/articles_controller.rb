class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  # --- READ ---
  def show
  end

  # --- CREATE ---
  def new
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
