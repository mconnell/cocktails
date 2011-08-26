class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.order('name ASC')
  end

  def show
    @ingredient = Ingredient.find_by_url_slug(params[:id])
  end

end
