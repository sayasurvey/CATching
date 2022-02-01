class ContactMailer < ApplicationMailer  
  def send_mail(contact)
    @contact = contact
    mail to: 'saya3133@gmail.com', subject: '【お問い合わせ】'
  end
end
