require 'spec_helper'

describe MyIngredientsController do
  let(:ingredient){i=Ingredient.new; i.id = 123; i}

  describe "PUT #update" do
    it "adds the ingredient id to the session" do
      Ingredient.stub(:find).and_return(ingredient)
      put :update, :id => 123
      assert_equal [123], session[:my_ingredients]
    end
  end

  describe "DELETE #destroy" do
    it "removes the ingredient id from the session" do
      
      Ingredient.stub(:find).and_return(ingredient)
      delete :destroy, :id => 123
      assert_equal [456], session[:my_ingredients]
    end
  end

end
