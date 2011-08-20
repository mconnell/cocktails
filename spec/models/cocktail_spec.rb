require 'spec_helper'

describe Cocktail do
  describe "validations" do
    it "requires a name" do
      cocktail = Cocktail.new(:name => nil)
      assert_equal false, cocktail.valid?
      assert cocktail.errors[:name].present?
    end

    it "requires a unique name" do
      Cocktail.create!(:name => 'Cooler')
      cocktail = Cocktail.new(:name => 'CoOLEr')
      assert_equal false, cocktail.valid?
      assert cocktail.errors[:name].present?
    end
  end

  describe "#can_be_made_from?" do
    let(:cocktail){Cocktail.create!(:name => 'Cooler')}
    let(:ingredient){Ingredient.create!(:name => 'Gin')}
    before(:each) do
      cocktail.measured_ingredients.create :ingredient => ingredient, :measure => '1 measure'
    end

    it "returns false when we dont have all of the ingredients" do
      assert !cocktail.can_be_made_from?([])
    end

    it "returns true when we have all of the ingredients" do
      assert cocktail.can_be_made_from?([ingredient.id])
    end

    it "return true when the collection has more than just the ingredients we're looking for" do
      assert cocktail.can_be_made_from?([ingredient.id, 100, 200, 300])
    end
  end
end
