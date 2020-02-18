class AddAvailableToIslands < ActiveRecord::Migration[6.0]
  def change
    add_column :islands, :available, :boolean, :default => false
  end
end
