class UserMailer < ApplicationMailer
	def book(user,token,book)
	  @user = user
	  @token = token.count == 0 ? 1 : (token.count + 1)
	  binding.pry
	  mail to: user.email, :subject => 'Please reset your Diversified Radiology password'
	end
end