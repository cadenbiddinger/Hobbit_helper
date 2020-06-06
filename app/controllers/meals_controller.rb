class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :update, :edit, :destroy]
  
  def index
    @meals = current_user.meals
  end

  def show
  end

  def new
    @meal = current_user.meals.new
  end

  def create
    @meal = current_user.meals.new(meal_params)
    if @meal.save
      redirect_to meals_path
    else 
      render :new
    end
  end

  def edit
  end

  def update
    if @meal.update(meal_params)
      redirect_to meals_path
    else
      render :edit
    end
  end

  def destroy 
    @meal.destroy
    # current_user.meals.find(params[:id]).destroy
    redirect_to meals_path
  end

  private 
    def meal_params
      params.require(:meal).permit(:days, :name)
    end

    def set_meal
      @meal = Meal.find(params[:id])
    end
end
