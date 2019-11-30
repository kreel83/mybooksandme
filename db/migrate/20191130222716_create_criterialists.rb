class CreateCriterialists < ActiveRecord::Migration[6.0]
  def change
    create_table :criterialists do |t|
      t.string :name
      t.references :googlecategory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
