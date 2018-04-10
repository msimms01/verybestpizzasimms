class CreateBucketLists < ActiveRecord::Migration
  def change
    create_table :bucket_lists do |t|
      t.string :bucketlist
      t.integer :users_id
      t.integer :dishes_id
      t.integer :selectedvenue_id

      t.timestamps

    end
  end
end
