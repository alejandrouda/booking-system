class RemoveColumnsFromRestaurantes < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurantes, :owner_first_name, :string
    remove_column :restaurantes, :owner_last_name, :string
    remove_column :restaurantes, :owner_email, :string
  end
end
