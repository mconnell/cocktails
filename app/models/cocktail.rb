class Cocktail < ActiveRecord::Base
  has_many :measured_ingredients

  validates_presence_of :name
end
