class ContactController < ApplicationController
  def index
    @message = Message.new
  end
  
  def send_message
    @message = Message.new(params[:message])
    if @message.valid?
      SiteMailer.contact_message(@message).deliver
      redirect_to contact_thank_you_path
    else
      render :index
    end
  end
  
  def thank_you
  end
end
