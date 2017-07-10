class HomeController < ApplicationController
	require 'mailgun'

  def new
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render xml: @contact }
    end
  end
  
  def create 
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        flash[:notice] = 'Contact was successfully created.'
        format.html { redirect_to(@contact) }
        format.xml  { render xml: @contact, status: :created, location: @contact }
      else
        format.html { render action: 'new' }
        format.xml  { render xml: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

	def index
    @contact = Contact.new
			end

  private
  def contact_params
    params.require(:contact).permit(:email, :name, :massage)
    
  end
end
