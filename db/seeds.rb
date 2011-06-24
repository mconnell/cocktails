# Initial ingredients
["Grenadine", "Soda Water", "Campari", "Bols Genever", "Vermouth", "Maraschino Cherry", "Lemon Juice"].each do |ingredient_name|
  Ingredient.find_or_create_by_name(:name => ingredient_name)
end
