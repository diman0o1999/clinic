class FormMailer < ApplicationMailer
  default from: 'info@kdc-spb.ru'

  def service_email
    mail(to: 'm.ryadn@gmail.com', subject: 'Welcome to My Awesome Site')
  end





end