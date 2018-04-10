class Dish < ApplicationRecord
  # Direct associations

  has_many   :bucket_lists,
             :foreign_key => "dishes_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
