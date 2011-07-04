class Cocktail < ActiveRecord::Base
  has_many :measured_ingredients
end
