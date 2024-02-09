class AlcoholsController < ApplicationController
  before_action :set_categories, only: [:new,:edit]
  
  def index
    @alcohols=Alcohol.all
  end

  def new
    @alcohol=Alcohol.new
  end

  def create
    @alcohol=Alcohol.create(alcohol_params)
    if @alcohol.save
      redirect_to alcohols_path
    else
      render :new, status: :unprocessable_entity
   end
  end

  def show
    @alcohol=Alcohol.find(params[:id])
  end

  def edit
    @alcohol=Alcohol.find(params[:id])
  end

  def update
    @alcohol = Alcohol.find(params[:id])
    
    if @alcohol.update(alcohol_params)
      redirect_to alcohols_path(@alcohol)
    else
      render :edit, status: :unprocessable_entity
    end
  end


  private
  def alcohol_params
    params.require(:alcohol).permit(:alcohol_name, :memo, :category_id, :image).merge(user_id: current_user.id)
  end

  def set_categories
    @categories = Category.all
  end
end
