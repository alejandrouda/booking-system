class CreateUserRestauranteTags < ActiveRecord::Migration[6.0]
  def change
    create_table :user_restaurante_tags do |t|

      t.timestamps
    end
  end
end
