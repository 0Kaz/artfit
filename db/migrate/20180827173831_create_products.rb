class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :size
      t.integer :quantity
      t.integer :unit_price
      t.references :design, foreign_key: true

      t.timestamps
    end
  end
end
