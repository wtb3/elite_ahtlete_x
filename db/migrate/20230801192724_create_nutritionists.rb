class CreateNutritionists < ActiveRecord::Migration[7.0]
  def change
    create_table :nutritionists do |t|
      t.string :name
      t.string :expertise
      t.string :location

      t.timestamps
    end
  end
end
