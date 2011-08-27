require 'spec_helper'

describe MyIngredientsController do
  let(:ingredient){i=Ingredient.new; i.id = 123; i.url_slug = 'gin'; i}
  before(:each){ request.env["HTTP_REFERER"] = 'place_i_came_from' }

  describe "PUT #update" do
    before(:each) do
      Ingredient.stub(:find_by_url_slug).and_return(ingredient)
    end

    it "adds the ingredient id to the session" do
      put :update, :id => 'gin'
      assert_equal [123], session[:my_ingredients]
    end

    it "removes the ingredient if already exists" do
      session[:my_ingredients] = [123]
      put :update, :id => 'gin'
      assert_equal [], session[:my_ingredients]
    end

    it "tells the ingredient to be toggled when xhr" do
      xhr :put, :update, :id => 'gin'
      assert_match response.body, /Swizzle\.toggleIngredient/ 
    end
  end

  describe "DELETE #destroy" do
    it "removes the ingredient id from the session" do
      Ingredient.stub(:find_by_url_slug).and_return(ingredient)
      session[:my_ingredients] = [123]
      delete :destroy, :id => 123
      assert_equal [], session[:my_ingredients]
    end
  end

end
