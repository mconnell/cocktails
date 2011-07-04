class CreateCocktails < ActiveRecord::Migration
  def self.up
    create_table :cocktails do |t|
      t.string :name

      t.timestamps
    end

    change_table :measured_ingredients do |t|
      t.references :cocktail
    end
  end

  def self.down
    change_table :measured_ingredients do |t|
      t.remove :cocktail_id
    end

    drop_table :cocktails
  end
end
