class ContactsController < ApplicationController

	require 'mailgun'

  def create

    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
				ModelMailer.new_record_notification(@contact).deliver
        flash[:notice] = 'Thanks. We will send you an e-mail about our answer. Have a nice day!'
        format.html { redirect_to :back }
        format.xml  { render xml: @contact, status: :created, location: @contact }
      else
        format.html { render action: 'new' }
        format.xml  { render xml: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @contact = Contact.all
    @contact = Contact.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @contact }
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end

