class ContactController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        flash[:notice] = 'Thanks. We will send you an e-mail about our answer. Have a nice day!'
        format.html { redirect_to(@contact) }
        format.xml  { render xml: @contact, status: :created, location: @contact }
      else
        format.html { render action: 'new' }
        format.xml  { render xml: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to(contacts_url) }
      format.xml  { head :ok }
    end
  end


  def index
    @contact = Contact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @contact }
    end
  end

  def new
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render xml: @contact }
    end
  end

  def show
    @contact = Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render xml: @contact }
    end
  end


  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
