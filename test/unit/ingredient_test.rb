require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "ingredient has a name" do
    ingredient = Ingredient.new(:name => nil)
    assert_equal false, ingredient.valid?
    assert ingredient.errors[:name].present?
  end
end
