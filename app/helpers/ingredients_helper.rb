module IngredientsHelper

  def ingredient_box(ingredient)
    classes = "ingredient_box ingredient_#{ingredient.url_slug}"
    classes << " has_ingredient" if my_ingredients.include?(ingredient.id)

    content = link_to ingredient.name, my_ingredient_path(ingredient), :remote => true, :method=> :put, :class => classes
    content << link_to('View', ingredient, :class => 'btn small view')

    content_tag :div, :class => "span4 columns ingredient" do
      content
    end
  end
end
