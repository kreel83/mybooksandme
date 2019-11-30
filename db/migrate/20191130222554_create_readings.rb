class CreateReadings < ActiveRecord::Migration[6.0]
  def change
    create_table :readings do |t|
      t.string :googleid
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
