class SubscribeController < ApplicationController
  def create
    @subscribe = Subscribe.new(subscribe_params)

    respond_to do |format|
      if @subscribe.save
        flash[:notice] = 'Thanks. We will send you an e-mail about us. Have a nice day!'
        format.html { redirect_to(@subscribe) }
        format.xml  { render xml: @subscribe, status: :created, location: @subscribe }
      else
        format.html { render action: 'new' }
        format.xml  { render xml: @subscribe.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @subscribe = Subscribe.find(params[:id])
    @subscribe.destroy

    respond_to do |format|
      format.html { redirect_to(subscribes_url) }
      format.xml  { head :ok }
    end
  end


  def index
    @subscribe = Subscribe.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @subscribe }
    end
  end

  def new
    @subscribe = Subscribe.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render xml: @subscribe }
    end
  end

  def show
    @subscribe = Subscribe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render xml: @subscribe }
    end
  end


  private
  def subscribe_params
    params.require(:subscribe).permit(:email)
  end
end
