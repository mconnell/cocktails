class CreateMeasuredIngredients < ActiveRecord::Migration
  def self.up
    create_table :measured_ingredients do |t|
      t.references :ingredient
      t.string     :measure

      t.timestamps
    end
  end

  def self.down
    drop_table :measured_ingredients
  end
end
