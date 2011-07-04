require 'spec_helper'

describe Ingredient do
  describe "validations" do
    it "has a name" do
      ingredient = Ingredient.new(:name => nil)
      assert_equal false, ingredient.valid?
      assert ingredient.errors[:name].present?
    end
  end
end
