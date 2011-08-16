class EventsController < ApplicationController
  # GET /events
  # GET /events.xml
  def index
    @ses ||=session[:user]
     @fed ||=Customer.find(@ses)
     if @fed.user_type==="Admin"
       @events = Event.all()
     else
       @events = Event.find_all_by_userid (@fed.user_id)
     end
     

    respond_to do |format|
     format.js do
           render do |page|

               page.replace_html "home",
                 :partial => "index"
           end
        end
  end
  end

  # GET /events/1
  # GET /events/1.xml
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event }
    end
  end

  # GET /events/new
  # GET /events/new.xml
  def new
    @event = Event.new

     respond_to do |format|
     format.js do
           render do |page|

               page.replace_html "home",
                 :partial => "form"
           end
        end
  end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
    respond_to do |format|
     format.js do
           render do |page|

               page.replace_html "home",
                 :partial => "edit"
           end
        end
  end
  end

  # POST /events
  # POST /events.xml
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
      format.js do
           render do |page|

               page.replace_html "home","<div class='loading'>Event created successfully.</div>"

           end
        end
      else
         format.js do
           render do |page|

               page.replace_html "home",
                 :partial => "form"
           end
        end

       end
    end
  end

  # PUT /events/1
  # PUT /events/1.xml
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to(@event, :notice => 'Event was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.xml
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to "/home"}
      format.xml  { head :ok }
    end
  end
end
