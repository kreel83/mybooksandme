class CreateActualreadings < ActiveRecord::Migration[6.0]
  def change
    create_table :actualreadings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :reading, null: false, foreign_key: true
      t.datetime :begindate

      t.timestamps
    end
  end
end
