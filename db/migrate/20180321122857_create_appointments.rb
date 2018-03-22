class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.integer :speciality_id
      t.integer :user_id

      t.timestamps
    end
  end
end
