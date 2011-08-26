class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.order('name ASC')
  end

  def show
    @cocktail = Cocktail.find_by_url_slug(params[:id])
  end

end
