class AddUrlSlugToIngredients < ActiveRecord::Migration
  def self.up
    change_table :ingredients do |t|
      t.string :url_slug
    end
  end

  def self.down
    change_table :ingredients do |t|
      t.remove :url_slug
    end
  end
end
