class CreateDesigns < ActiveRecord::Migration[5.2]
  def change
    create_table :designs do |t|
      t.string :name
      t.string :theme
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
