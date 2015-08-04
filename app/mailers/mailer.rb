class Mailer < ActionMailer::Base
  default from: "cakeinfotech@gmail.com"

  def registration_confirmation(user)
    @user = user
    mail(:to => user.email, :subject => 'Registration Successful.')
  end

  def forget_password(user)
    @user = user
    mail(:to => user.email, :subject => 'Forget Password')
  end

end
