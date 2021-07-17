class AddReferencesToRestaurantes < ActiveRecord::Migration[6.0]
  def change
    add_reference :restaurantes, :user, null: false, foreign_key: true
  end
end
