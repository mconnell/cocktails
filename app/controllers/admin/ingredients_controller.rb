class Admin::IngredientsController < AdminController

  def index
    @ingredients = Ingredient.order('name ASC')
  end

  def show
    @ingredient = Ingredient.find_by_url_slug(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
    @ingredient = Ingredient.find_by_url_slug(params[:id])
  end

  def create
    @ingredient = Ingredient.new(params[:ingredient])

    if @ingredient.save
      redirect_to admin_ingredients_url, :notice => 'ingredient was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @ingredient = Ingredient.find_by_url_slug(params[:id])

    if @ingredient.update_attributes(params[:ingredient])
      redirect_to admin_ingredients_url, :notice => 'ingredient was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @ingredient = Ingredient.find_by_url_slug(params[:id])
    @ingredient.destroy

    redirect_to admin_ingredients_url
  end

end
