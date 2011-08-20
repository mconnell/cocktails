class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.order('name ASC')
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

end
