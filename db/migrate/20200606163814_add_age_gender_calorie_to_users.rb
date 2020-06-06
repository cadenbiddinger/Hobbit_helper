class AddAgeGenderCalorieToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :calorie_goal, :integer
  end
end
