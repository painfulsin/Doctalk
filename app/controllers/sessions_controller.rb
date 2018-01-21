class SessionsController < ApplicationController

  def new
    respond_to do |format|
      format.js
    end
  end

def create
  user = User.find_by_email(params[:email])
   if user
    session[:user_id] = user.id
    redirect_to doctors_path, :notice => "Logged in!"
  else
    redirect_to root_path
  end
end
 def destroy
  session[:user_id] = nil
  flash[:success] = "Logged Out Successfully!"
  redirect_to root_path
  end

  
end
