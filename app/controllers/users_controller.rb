class UsersController < ApplicationController


  def index 
  end 

  def check_email
    @user = User.find_by_email(params[:user][:email])
    respond_to do |format|
      format.json { render :json => !@user  }
  end
end

  def check_username
    @user = User.find_by_username(params[:user][:username])
    respond_to do |format|
      format.json { render :json => !@user  }
  end
end

  def new
    @user = User.new
    respond_to do |format|
      format.js{}
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
    params.require(:user).permit( :username, :email, :password, :password_confirmation)
  end

end
