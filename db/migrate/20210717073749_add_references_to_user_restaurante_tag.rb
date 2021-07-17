class AddReferencesToUserRestauranteTag < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_restaurante_tags, :user, null: false, foreign_key: true
    add_reference :user_restaurante_tags, :restaurante, null: false, foreign_key: true
  end
end
