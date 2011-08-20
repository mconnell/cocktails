class Cocktail < ActiveRecord::Base
  has_many :measured_ingredients, :dependent => :destroy
  has_many :ingredients, :through => :measured_ingredients

  accepts_nested_attributes_for :measured_ingredients, :allow_destroy => true

  validates :name, :presence   => true,
                   :uniqueness => { :case_sensitive => false }

  def can_be_made_from?(list_of_ingredient_ids)
    (ingredients.map(&:id) - list_of_ingredient_ids).empty?
  end

end
