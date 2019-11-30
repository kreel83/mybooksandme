class CreatePrivateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :private_reviews do |t|
      t.references :readinglist, null: false, foreign_key: true
      t.text :review
      t.text :feelings
      t.text :how

      t.timestamps
    end
  end
end
