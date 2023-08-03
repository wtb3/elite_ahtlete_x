class CreateMentalHealthProfessionals < ActiveRecord::Migration[7.0]
  def change
    create_table :mental_health_professionals do |t|
      t.string :name
      t.string :expertise
      t.string :location

      t.timestamps
    end
  end
end
