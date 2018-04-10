class Dish < ApplicationRecord
  # Direct associations

  has_many   :dish_venues,
             :dependent => :destroy

  has_many   :bucket_lists,
             :foreign_key => "dishes_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
