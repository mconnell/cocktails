class MyIngredientsController < ApplicationController

  def update
    ingredient = Ingredient.find_by_url_slug(params[:id])
    my_ingredients << ingredient.id
    redirect_to :back
  end

  def destroy
    ingredient = Ingredient.find_by_url_slug(params[:id])
    remove_my_ingredient(ingredient)
    redirect_to :back
  end

end
