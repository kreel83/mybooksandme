class CreateGooglecategories < ActiveRecord::Migration[6.0]
  def change
    create_table :googlecategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
