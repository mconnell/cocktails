class MeasuredIngredient < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :cocktail

  validates_presence_of :ingredient, :cocktail, :measure
end
