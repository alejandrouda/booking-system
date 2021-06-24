class CreateClientTags < ActiveRecord::Migration[6.0]
  def change
    create_table :client_tags do |t|
      t.references :booking, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
