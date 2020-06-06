class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :breakfast
      t.string :second_breakfast
      t.string :elevensies
      t.string :luncheon
      t.string :afternoon_tea
      t.string :dinner
      t.string :supper
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
