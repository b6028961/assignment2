class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :ProfileId
      t.integer :ProductId
      t.string :Author
      t.integer :ProductRating
      t.string :ReviewText
      t.date :DateofReview

      t.timestamps
    end
  end
end
