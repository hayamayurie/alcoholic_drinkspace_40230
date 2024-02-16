class AlcoholsController < ApplicationController
  before_action :set_alcohols, only:[:edit, :update, :destroy]
  before_action :set_categories, only: [:index, :new,:edit,:create,:update]
  def index
    @alcohols=current_user.alcohols.order('created_at DESC')
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
    @alcohol = Alcohol.find(params[:id])
  end

  def edit
  end

  def update
    if @alcohol.update(alcohol_params)
      redirect_to alcohols_path(@alcohol)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @alcohol.destroy
    redirect_to alcohols_path
  end

  def category
    @category = Category.find(params[:id])
    @alcohols = current_user.alcohols.where(category_id: @category.id)
  end


  private
  def alcohol_params
    params.require(:alcohol).permit(:alcohol_name, :memo, :category_id, :image).merge(user_id: current_user.id)
  end

  def set_alcohols
    @alcohol = Alcohol.find(params[:id])
  end


  def set_categories
    @categories = Category.all
  end
end
