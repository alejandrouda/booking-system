class RemoveReferencesFromRestaurantes < ActiveRecord::Migration[6.0]
  def change
    remove_reference :restaurantes, :user, null: false, foreign_key: true
  end
end
