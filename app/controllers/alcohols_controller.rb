class AlcoholsController < ApplicationController
  before_action :set_categories, only: [:new,]
  
  def index
  end

  def new
  end

  private

  def set_categories
    @categories = Category.all
  end
end
