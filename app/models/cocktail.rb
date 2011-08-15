class Cocktail < ActiveRecord::Base
  has_many :measured_ingredients, :dependent => :destroy

  accepts_nested_attributes_for :measured_ingredients

  validates :name, :presence   => true,
                   :uniqueness => { :case_sensitive => false }

end
