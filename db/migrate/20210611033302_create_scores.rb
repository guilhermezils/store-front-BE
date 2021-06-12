class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.string :name
      # t.string :composer
      t.string :catalog
      t.integer :price
      t.integer :quantity
      t.string :cover
      # t.belongs_to :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
