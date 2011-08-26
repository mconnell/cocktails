class Cocktail < ActiveRecord::Base
  has_many :measured_ingredients, :dependent => :destroy
  has_many :ingredients, :through => :measured_ingredients

  before_create :generate_url_slug

  accepts_nested_attributes_for :measured_ingredients, :allow_destroy => true

  validates :name, :presence   => true,
                   :uniqueness => { :case_sensitive => false }

  def to_param
    url_slug
  end

  def can_be_made_from?(list_of_ingredient_ids)
    (ingredients.map(&:id) - list_of_ingredient_ids).empty?
  end

  private
  def generate_url_slug
    self.url_slug = name.parameterize.underscore
  end
end
