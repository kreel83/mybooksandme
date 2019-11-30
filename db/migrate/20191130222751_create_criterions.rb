class CreateCriterions < ActiveRecord::Migration[6.0]
  def change
    create_table :criterions do |t|
      t.references :criterialist, null: false, foreign_key: true
      t.string :note
      t.references :readinglist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
