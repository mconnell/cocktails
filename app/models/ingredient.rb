class Ingredient < ActiveRecord::Base
  has_many :measured_ingredients
  has_many :cocktails, :through => :measured_ingredients

  before_create :generate_url_slug

  validates :name, :presence   => true,
                   :uniqueness => { :case_sensitive => false }

  def to_param
    url_slug
  end

  private
  def generate_url_slug
    self.url_slug = name.parameterize.underscore
  end

end
