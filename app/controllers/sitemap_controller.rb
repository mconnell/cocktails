class SitemapController < ApplicationController
  layout nil

  def index
    headers['Content-Type'] = 'application/xml'
    @ingredients = Ingredient.all
    @cocktails   = Cocktail.all
  end
end