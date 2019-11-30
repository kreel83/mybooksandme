class CreateWishslists < ActiveRecord::Migration[6.0]
  def change
    create_table :wishslists do |t|
      t.references :reading, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
