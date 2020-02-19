class AddDescriptionToIslands < ActiveRecord::Migration[6.0]
  def change
    add_column :islands, :description, :text
  end
end
