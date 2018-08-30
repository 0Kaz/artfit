class AddStoryToDesigns < ActiveRecord::Migration[5.2]
  def change
    add_column :designs, :story, :string
  end
end
