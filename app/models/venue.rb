class Venue < ApplicationRecord
  # Direct associations

  has_many   :visitedvenues,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
