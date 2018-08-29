class AddPhotoToDesigns < ActiveRecord::Migration[5.2]
  def change
    add_column :designs, :photo, :string
  end
end
