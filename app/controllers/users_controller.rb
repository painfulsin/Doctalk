class UsersController < ApplicationController
 before_action :user


  def index
  end

  def check_email
    @user = User.find_by_email(params[:user][:email])
    respond_to do |format|
      format.json { render :json => !@user  }
    end
  end

  def new
    @user = User.new
  end

  def show
  end

  def edit
  end

  def update
    if @user.valid?
      @user.update_attributes(user_params)
      redirect_to doctors_path
    else
      render 'new'
    end
  end


    def create
      @user = User.new(user_params)
      if @user.valid?
        @user.save
        @success = true
        session[:user_id] = @user.id
        redirect_to doctors_path
        flash[:success] = "Signed up Successfully!"
      else
        @success = false
        render 'new'

      end
    end
    private

    def user_params
      params.require(:user).permit( :name, :email, :password, :password_confirmation)
    end

    def user
  @user = User.find_by(:id => params[:id])
end

  end
