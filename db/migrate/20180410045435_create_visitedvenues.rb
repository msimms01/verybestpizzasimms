class CreateVisitedvenues < ActiveRecord::Migration
  def change
    create_table :visitedvenues do |t|
      t.integer :user_id
      t.integer :venue_id

      t.timestamps

    end
  end
end
