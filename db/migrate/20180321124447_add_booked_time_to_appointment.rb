class AddBookedTimeToAppointment < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :appointment_time, :time
    add_column :appointments, :appointment_date, :date
  end
end
