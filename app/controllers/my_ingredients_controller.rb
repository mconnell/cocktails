class MyIngredientsController < ApplicationController

  def update
    ingredient = Ingredient.find_by_url_slug(params[:id])
    if my_ingredients.include?(ingredient.id)
      remove_my_ingredient(ingredient)
    else
      my_ingredients << ingredient.id
    end
    respond_to do |format|
      format.html { redirect_to :back }
      format.js   { render do |page|
          page.call 'Swizzle.toggleIngredient', ".ingredient_#{ingredient.url_slug}" 
        end
      }
    end
  end

  def destroy
    ingredient = Ingredient.find_by_url_slug(params[:id])
    remove_my_ingredient(ingredient)
    redirect_to :back
  end

end
