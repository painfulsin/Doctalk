class UserMailer < ApplicationMailer

	def book(user,token,book,spec)
	  @user = user
    @spec = spec
	  @token = token.count == 0 ? 1 : (token.count + 1)
	  mail to: user.email, :subject => 'Appointment Confirmation Email'
	end
end