class CreateProfessionalAthletes < ActiveRecord::Migration[7.0]
  def change
    create_table :professional_athletes do |t|
      t.string :name
      t.string :sport
      t.string :location

      t.timestamps
    end
  end
end
