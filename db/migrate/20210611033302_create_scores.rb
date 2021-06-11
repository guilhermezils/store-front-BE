class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.string :name
      t.string :composer
      t.integer :catalog
      t.integer :price
      t.integer :quantity
      t.string :cover

      t.timestamps
    end
  end
end
