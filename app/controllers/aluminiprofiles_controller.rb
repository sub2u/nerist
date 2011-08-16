class AluminiprofilesController < ApplicationController
  # GET /aluminiprofiles
  # GET /aluminiprofiles.xml
  def index
    @aluminiprofiles = Aluminiprofile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aluminiprofiles }
    end
  end

  # GET /aluminiprofiles/1
  # GET /aluminiprofiles/1.xml
  def show
    @aluminiprofile = Aluminiprofile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aluminiprofile }
    end
  end

  # GET /aluminiprofiles/new
  # GET /aluminiprofiles/new.xml
  def new
    
    @aluminiprofile = Aluminiprofile.find_by_regid (params[:userid])
    if @aluminiprofile.nil?
    @aluminiprofile = Aluminiprofile.new
    @aluminiprofile.regid=params[:userid]
    else
    end
    @customer = Customer.find(session[:user])
    respond_to do |format|
     format.js do
           render do |page|

               page.replace_html "home",
                 :partial => "form"
           end
        end
  end
  end

  # GET /aluminiprofiles/1/edit
  def edit
    @aluminiprofile = Aluminiprofile.find(params[:id])
  end

  # POST /aluminiprofiles
  # POST /aluminiprofiles.xml
  def create
    @aluminiprofile = Aluminiprofile.new(params[:aluminiprofile])

    respond_to do |format|
      if @aluminiprofile.save
      format.js do
           render do |page|

               page.replace_html "home","<div class='loading'>Profile created successfully.</div>"

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

  # PUT /aluminiprofiles/1
  # PUT /aluminiprofiles/1.xml
  def update
    @aluminiprofile = Aluminiprofile.find(params[:id])

    respond_to do |format|
      if @aluminiprofile.update_attributes(params[:aluminiprofile])
      format.js do
           render do |page|

               page.replace_html "home","<div class='loading'>Profile updated successfully.</div>"

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

  # DELETE /aluminiprofiles/1
  # DELETE /aluminiprofiles/1.xml
  def destroy
    @aluminiprofile = Aluminiprofile.find(params[:id])
    @aluminiprofile.destroy

    respond_to do |format|
      format.html { redirect_to(aluminiprofiles_url) }
      format.xml  { head :ok }
    end
  end
  def userprof
    @aluminiprofile = Aluminiprofile.find_by_regid (params[:userid])
   
    @customer = Customer.find(session[:user])
  respond_to do |format|
     format.js do
           render do |page|

               page.replace_html "home",:partial => "user"
                
           end
        end
  end 
end
end
