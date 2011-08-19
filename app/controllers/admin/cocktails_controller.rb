class Admin::CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.order('name ASC')
  end

  def new
    @cocktail = Cocktail.new
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @cocktail = Cocktail.new(params[:cocktail])

    if @cocktail.save
      redirect_to admin_cocktails_url, :notice => 'cocktail was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @cocktail = Cocktail.find(params[:id])

    if @cocktail.update_attributes(params[:cocktail])
      redirect_to admin_cocktails_url, :notice => 'cocktail was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy

    redirect_to admin_cocktails_url
  end

end
