class ItemsController < ApplicationController
  def new
    @meal = current_user.meals.new
  end

  def edit
  end
end
