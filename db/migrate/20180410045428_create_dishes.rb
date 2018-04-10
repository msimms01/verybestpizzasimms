class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :dishname
      t.string :cuisine

      t.timestamps

    end
  end
end
