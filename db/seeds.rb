# Watermelon & Vodka Cooler
watermelon = Ingredient.create!(:name => 'Watermelon')
vodka      = Ingredient.create!(:name => 'Vodka')
triple_sec = Ingredient.create!(:name => 'Triple Sec')
lime_juice = Ingredient.create!(:name => 'Lime Juice')

cocktail = Cocktail.create!(:name => 'Watermelon & Vodka Cooler')
cocktail.measured_ingredients.create!(:ingredient => watermelon, :measure => '4 measures')
cocktail.measured_ingredients.create!(:ingredient => vodka,      :measure => '1 measure')
cocktail.measured_ingredients.create!(:ingredient => triple_sec, :measure => '1/2 measure')
cocktail.measured_ingredients.create!(:ingredient => lime_juice, :measure => '1/4 measure')
