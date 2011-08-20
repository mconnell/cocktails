class AddPreparationTextToCocktail < ActiveRecord::Migration
  def self.up
    change_table :cocktails do |t|
      t.text :preparation
    end
  end

  def self.down
    change_table :cocktails do |t|
      t.remove :preparation
    end
  end
end