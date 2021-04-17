class AddProductidToReview < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :Productid, :integer
  end
end
