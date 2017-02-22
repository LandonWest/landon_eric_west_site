class ContactsController < ApplicationController

  def new
  end

  def create
    ContactMailer.send_contact_email(mailer_params).deliver
    redirect_to(root_path, :notice => 'Your email has been sent')
  end

  private
    def mailer_params
      params.permit(:name, :email, :twitter, :message)
    end
end
