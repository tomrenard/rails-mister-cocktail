class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.string :description
      t.integer :ingredient_id
      t.integer :cocktail_id

      t.timestamps
    end
  end
end
