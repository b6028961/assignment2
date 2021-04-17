class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :pName
      t.string :pBrand
      t.integer :pCost
      t.string :pCategory
      t.datetime :pDate
      t.string :pDescription
      t.string :pPhoto

      t.timestamps
    end
  end
end
