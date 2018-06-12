class CreateSpecialities < ActiveRecord::Migration[5.1]
  def change
    create_table :specialities do |t|
      t.string :speciality_name
      t.string :doctor_name
      t.string :doctor_venue
      t.string :phone
      t.string :hospital_name

      t.timestamps
    end
  end
end
