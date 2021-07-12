class AddReferencesToTables < ActiveRecord::Migration[6.0]
  def change
    add_reference :tables, :sections, null: false, foreign_key: true
  end
end
