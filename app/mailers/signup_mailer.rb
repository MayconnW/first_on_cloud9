class SignupMailer  < ActionMailer::Base
  default from: 'no-reply@minhaloja.com.br'
  
  def confirm_email(user)
    @user = user
    @confirmation_link = confirmation_url({
      token: @user.confirmation_token
    })
    
    mail({
      to: user.email,
      bcc: ['sign ups <signups@minhaloja.com.br>'],
      subject: I18n.t('signup.confirm_email.subject')
    })
    
  end
  
end