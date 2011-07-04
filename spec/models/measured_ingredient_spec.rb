require 'spec_helper'

describe MeasuredIngredient do
  describe "validations" do
    it "requires a measure" do
      measured_ingredient = MeasuredIngredient.new(:measure => nil)
      assert_equal false, measured_ingredient.valid?
      assert measured_ingredient.errors[:measure].present?
    end

    it "requires an ingredient" do
      measured_ingredient = MeasuredIngredient.new(:ingredient => nil)
      assert_equal false, measured_ingredient.valid?
      assert measured_ingredient.errors[:ingredient].present?
    end

    it "requires a cocktail" do
      measured_ingredient = MeasuredIngredient.new(:cocktail => nil)
      assert_equal false, measured_ingredient.valid?
      assert measured_ingredient.errors[:cocktail].present?
    end
  end
end
