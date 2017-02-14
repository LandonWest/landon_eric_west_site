class ContactsController < ApplicationController

  def new
  end

  def create
    ContactMailer.send_contact_email(mailer_params).deliver
  end

  private
    def mailer_params
      params.permit(:name, :email, :twitter, :message)
    end
end
