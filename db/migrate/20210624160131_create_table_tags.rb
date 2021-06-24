class CreateTableTags < ActiveRecord::Migration[6.0]
  def change
    create_table :table_tags do |t|
      t.references :booking, null: false, foreign_key: true
      t.references :table, null: false, foreign_key: true

      t.timestamps
    end
  end
end
