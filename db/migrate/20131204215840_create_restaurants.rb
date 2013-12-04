class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :hours
      t.string :cuisine
      t.string :address
      t.string :photo_url
      t.integer :average_rating

      t.timestamps
    end
  end
end
