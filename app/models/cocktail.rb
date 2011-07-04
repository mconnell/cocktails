class Cocktail < ActiveRecord::Base
  has_many :measured_ingredients

  validates :name, :presence   => true,
                   :uniqueness => true

end
