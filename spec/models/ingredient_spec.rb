require 'spec_helper'

describe Ingredient do
  describe "slug generation" do
    it "generates a slug from the name" do
      ingredient = Ingredient.create!(:name => 'Soda Water')
      assert_equal 'soda_water', ingredient.url_slug
    end
  end

  describe "validations" do
    it "has a name" do
      ingredient = Ingredient.new(:name => nil)
      assert_equal false, ingredient.valid?
      assert ingredient.errors[:name].present?
    end

    it "requires a unique name" do
      Ingredient.create!(:name => 'Soda Water')
      ingredient = Ingredient.new(:name => 'SODA Water')
      assert_equal false, ingredient.valid?
      assert ingredient.errors[:name].present?
    end
  end
end
