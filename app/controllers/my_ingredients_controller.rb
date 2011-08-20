class MyIngredientsController < ApplicationController

  def update
    ingredient = Ingredient.find(params[:id])
    my_ingredients << ingredient.id
    render :text => 'ok'
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    remove_my_ingredient(ingredient)
    render :text => 'ok'
  end

end
