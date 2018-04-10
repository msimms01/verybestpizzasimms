class BucketList < ApplicationRecord
  # Direct associations

  belongs_to :selectedvenue,
             :class_name => "Venue"

  belongs_to :dishes,
             :class_name => "Dish"

  belongs_to :users,
             :class_name => "User"

  # Indirect associations

  # Validations

end
