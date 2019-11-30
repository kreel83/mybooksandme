class CreateReadinglists < ActiveRecord::Migration[6.0]
  def change
    create_table :readinglists do |t|
      t.references :reading, null: false, foreign_key: true
      t.datetime :begindate
      t.datetime :enddate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
