class RemoveReferencesFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :restaurante, null: false, foreign_key: true
  end
end
