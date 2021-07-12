class CreateRestaurantes < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurantes do |t|
      t.string :name
      t.string :owner_first_name
      t.string :owner_last_name
      t.string :owner_email
      t.string :plan

      t.timestamps
    end
  end
end
