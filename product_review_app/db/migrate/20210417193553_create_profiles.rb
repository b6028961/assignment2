class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :Name
      t.date :DoB
      t.string :Address
      t.string :City
      t.string :Country
      t.string :Photo

      t.timestamps
    end
  end
end
