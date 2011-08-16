class Cocktail < ActiveRecord::Base
  has_many :measured_ingredients, :dependent => :destroy

  accepts_nested_attributes_for :measured_ingredients, :allow_destroy => true

  validates :name, :presence   => true,
                   :uniqueness => { :case_sensitive => false }

end
