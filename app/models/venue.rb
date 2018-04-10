class Venue < ApplicationRecord
  # Direct associations

  has_many   :bucket_lists,
             :foreign_key => "selectedvenue_id",
             :dependent => :destroy

  has_many   :dish_venues,
             :dependent => :destroy

  has_many   :visitedvenues,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
