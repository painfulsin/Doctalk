class SpecialityController < ApplicationController
 before_action :hospital

 def index
  @speciality = Speciality.all
end

def search
  @speciality = Speciality.search(params[:search])
  end


def create
  @speciality = Speciality.new(speciality_params)
  if @speciality.valid?
    @speciality.save
    redirect_to  speciality_index_path
    flash[:success] = "Doctor details added successfully!"
  else
    render 'new'

  end
end

def new
end

def graph_rule
  @s = Appointment.all
end

  def take_appointment
     @s = Speciality.find params[:id]
  end

  def search_appointment
    day = Time.strptime(params[:appointment_date],"%m/%d/%Y").strftime('%A').upcase
     @s = Speciality.find params[:id]
     @time = case day
      when "MONDAY"
        ConfigCenter::DAYS::MONDAY
      when "TUESDAY"
        ConfigCenter::DAYS::TUESDAY
      when "WEDNESDAY"
        ConfigCenter::DAYS::WEDNESDAY
      when "THURSDAY"
        ConfigCenter::DAYS::THURSDAY
      when "FRIDAY"
        ConfigCenter::DAYS::FRIDAY
      when "SATURDAY"
        ConfigCenter::DAYS::SATURDAY
      when "SUNDAY"
        ConfigCenter::DAYS::SUNDAY
      end
  end

  def book
     @s = Speciality.find params[:id]
     book = @s.appointments.build(user_id: current_user.id,appointment_date: Time.strptime(params[:date],"%m/%d/%Y"),appointment_time: params[:time])
     book.save
     token = Appointment.where(appointment_date: Time.strptime(params[:date],"%m/%d/%Y"),appointment_time: Time.parse(params[:time]).to_s)
     UserMailer.book(current_user,token,book).deliver
  end


    def destroy
    @speciality = Speciality.find_by(:id => params[:id])
    @speciality.destroy
    flash[:notice] = "hospital deleted successfully!"
    redirect_to speciality_index_path
  end

  private

  def hospital
    @speciality = Speciality.find_by(:id => params[:id])
  end

  def speciality_params
    params.require(:speciality).permit( :speciality_name, :doctor_name, :doctor_venue, :phone, :hospital_name)
  end
end
