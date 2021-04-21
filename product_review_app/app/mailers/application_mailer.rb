class ApplicationMailer < ActionMailer::Base
  default from: 'b6028961@hallam.shu.ac.uk'
  layout 'mailer'
def forgot_password(user)
  @user = user
  @greeting = "Hi" 
  mail to: user.Email, :subject => 'Reset password instructions'
end
end
