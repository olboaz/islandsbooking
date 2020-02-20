class AddColumnsToIslands < ActiveRecord::Migration[6.0]
  def change
    add_column :islands, :aera, :integer
    add_column :islands, :country, :string
  end
end
