class ContactMailer < ApplicationMailer
  default :from => 'landonewest@gmail.com'

  def send_contact_email(params)
    @name = params[:name]
    @email = params[:email]
    @twitter = params[:twitter]
    @message = params[:message]

    mail( :to => 'landonewest@gmail.com',
          :subject => 'New Contact From LandonEricWest.com!' )
  end
end
