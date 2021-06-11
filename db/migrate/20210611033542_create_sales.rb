class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :score, null: false, foreign_key: true

      t.timestamps
    end
  end
end
