class MyIngredientsController < ApplicationController

  def update
    ingredient = Ingredient.find(params[:id])
    my_ingredients << ingredient.id
    redirect_to :back
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    remove_my_ingredient(ingredient)
    redirect_to :back
  end

end
