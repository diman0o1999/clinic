class FormMailer < ApplicationMailer
  default from: 'info@kdc-spb.ru'

  def service_email(form)
    @form_mail = form
    #если нужно на несколько адресов
    #mail(to: 'nomod@list.ru', subject: 'На сайте kdc-spb записались на прием', :bcc => ["m.ryadn@gmail.com", "ryadn@yandex.ru"])

    #раскидываем письма в зависимости от филиала
    if @form_mail.filial_id == 1
      mail(to: 'nomod@list.ru', subject: 'На сайте kdc-spb записались на прием / Филиал Пионерская')
    elsif @form_mail.filial_id == 2
      mail(to: 'm.ryadn@gmail.com', subject: 'На сайте kdc-spb записались на прием / Филиал Большевиков')
    else
      mail(to: 'ryadn@yandex.ru', subject: 'На сайте kdc-spb записались на прием / Филиал Ленинский')
    end


  end

end