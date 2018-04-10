class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :restaurant
      t.string :neighborhood
      t.string :address

      t.timestamps

    end
  end
end
