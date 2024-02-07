class AlcoholsController < ApplicationController
  before_action :set_categories, only: [:new,]
  
  def index
  end

  def new
    @alcohol=Alcohol.new
  end

  def create
    @alcohol=Alcohol.create(alcohol_params)
    redirect_to alcohols_path
  end

  private
  def alcohol_params
    params.require(:alcohol).permit(:alcohol_name, :memo, :category_id ).merge(user_id: current_user.id)
  end

  def set_categories
    @categories = Category.all
  end
end
