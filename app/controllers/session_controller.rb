class SessionsController < ApplicationController

  def new
    respond_to do |format|
      format.js
    end
  end

  def create
   user = User.authenticate(params[:email], params[:password])
   if user
    session[:user_id] = user.id
    redirect_to doctor_index_path, :notice => "Logged in!"
  else
    render "new"
  end
  
end
end
