class ApplicationController < ActionController::Base
  protect_from_forgery

  def my_ingredients
    session[:my_ingredients] ||= []
  end
  helper_method :my_ingredients

  def remove_my_ingredient(ingredient)
    session[:my_ingredients] -= [ingredient.id]
  end

end
