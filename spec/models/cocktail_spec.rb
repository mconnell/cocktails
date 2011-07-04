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
      cocktail = Cocktail.new(:name => 'Cooler')
      assert_equal false, cocktail.valid?
      assert cocktail.errors[:name].present?
    end
  end
end
