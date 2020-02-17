class CreateIslands < ActiveRecord::Migration[6.0]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :address
      t.float :price
      t.integer :number_of_guests

      t.timestamps
    end
  end
end
