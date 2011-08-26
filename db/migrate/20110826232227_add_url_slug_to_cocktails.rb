class AddUrlSlugToCocktails < ActiveRecord::Migration
  def self.up
    change_table :cocktails do |t|
      t.string :url_slug
    end
  end

  def self.down
    change_table :cocktails do |t|
      t.remove :url_slug
    end
  end
end
