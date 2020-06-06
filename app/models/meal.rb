class Meal < ApplicationRecord
  belongs_to :user
  # DAYS = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
  # NAMES = ['Breakfast', 'Second Breakfast', 'Elevenses', 'Luncheon', 'Afternoon Tea', 'Dinner', 'Supper']
end
