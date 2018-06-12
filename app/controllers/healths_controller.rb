class HealthsController < ApplicationController

  def index
    @health = Health.all
  end


  def create
    @health = Health.new(health_params)
    if @health.valid?
      @health.save
      redirect_to healths_path
      flash[:success] = "Health Tips added successfully!"
    else
      render 'new'
    end
  end

  def new
  end

  def show
    @health=Health.find params[:id]

  end

  private
  def health_params
    params.require(:health).permit( :title, :description)
  end
end