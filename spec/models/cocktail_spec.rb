require 'spec_helper'

describe Cocktail do
  describe "validations" do
    it "requires a name" do
      cocktail = Cocktail.new(:name => nil)
      assert_equal false, cocktail.valid?
      assert cocktail.errors[:name].present?
    end
  end
end
