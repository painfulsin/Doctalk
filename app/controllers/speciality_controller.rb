class SpecialityController < ApplicationController
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

  private

    def speciality_params
      params.require(:speciality).permit( :speciality_name, :doctor_name, :doctor_venue, :phone, :hospital_name)
    end
end
