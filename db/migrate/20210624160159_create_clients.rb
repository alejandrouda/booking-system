class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.integer :phone
      t.boolean :no_show

      t.timestamps
    end
  end
end