class AddReferencesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :restaurante, null: false, foreign_key: true
  end
end
