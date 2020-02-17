class AddUserReferencesToIslands < ActiveRecord::Migration[6.0]
  def change
    add_reference :islands, :user, null: false, foreign_key: true
  end
end
