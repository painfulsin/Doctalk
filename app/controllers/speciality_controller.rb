class SpecialityController < ApplicationController
 before_action :hospital

 def index
  @speciality = Speciality.all
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

  #   def destroy
  #   @speciality = Speciality.find_by(:id => params[:id])
  #   @speciality.destroy
  #   flash[:notice] = "hospital deleted successfully!"
  #   redirect_to speciality_index_path
  # end

  private

  def hospital
    @speciality = Speciality.find_by(:id => params[:id])
  end

  def speciality_params
    params.require(:speciality).permit( :speciality_name, :doctor_name, :doctor_venue, :phone, :hospital_name)
  end
end
