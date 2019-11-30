class CreatePublicReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :public_reviews do |t|
      t.references :readinglist, null: false, foreign_key: true
      t.text :review
      t.integer :like
      t.integer :unlike

      t.timestamps
    end
  end
end
