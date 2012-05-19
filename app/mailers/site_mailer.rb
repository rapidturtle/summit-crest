class SiteMailer < ActionMailer::Base
  default from: "Webmaster <webmaster@twincresttech.com>"
  
  def contact_message(message)
    @message = message
    mail to: "Webmaster <webmaster@twincresttech.com>", reply_to: "#{@message.name} <#{@message.email}>", subject: @message.subject
  end
end
