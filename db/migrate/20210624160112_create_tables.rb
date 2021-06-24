class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :tables do |t|
      t.integer :number
      t.string :section
      t.integer :min_pax
      t.integer :max_pax

      t.timestamps
    end
  end
end
