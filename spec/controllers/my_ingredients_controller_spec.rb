require 'spec_helper'

describe MyIngredientsController do
  let(:ingredient){i=Ingredient.new; i.id = 123; i.url_slug = 'gin'; i}
  before(:each){ request.env["HTTP_REFERER"] = 'place_i_came_from' }

  describe "PUT #update" do
    it "adds the ingredient id to the session" do
      Ingredient.stub(:find_by_url_slug).and_return(ingredient)
      put :update, :id => 'gin'
      assert_equal [123], session[:my_ingredients]
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
