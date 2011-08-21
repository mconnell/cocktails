class Ingredient < ActiveRecord::Base
  has_many :measured_ingredients
  has_many :cocktails, :through => :measured_ingredients

  validates :name, :presence   => true,
                   :uniqueness => { :case_sensitive => false }

end
