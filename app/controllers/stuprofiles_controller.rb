class StuprofilesController < ApplicationController
  # GET /stuprofiles
  # GET /stuprofiles.xml
  def index
    @stuprofiles = Stuprofile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stuprofiles }
    end
  end

  # GET /stuprofiles/1
  # GET /stuprofiles/1.xml
  def show
    @stuprofile = Stuprofile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stuprofile }
    end
  end

  # GET /stuprofiles/new
  # GET /stuprofiles/new.xml
  def new
    @stuprofile = Stuprofile.find_by_userid(params[:userid])
    if @stuprofile.nil?
    @stuprofile = Stuprofile.new
    @stuprofile.userid=params[:userid]
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

  # GET /stuprofiles/1/edit
  def edit
    @stuprofile = Stuprofile.find(params[:id])
  end

  # POST /stuprofiles
  # POST /stuprofiles.xml
  def create
    @stuprofile = Stuprofile.new(params[:stuprofile])

    respond_to do |format|
      if @stuprofile.save
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

  # PUT /stuprofiles/1
  # PUT /stuprofiles/1.xml
  def update
    @stuprofile = Stuprofile.find(params[:id])

   respond_to do |format|
      if @stuprofile.update_attributes(params[:stuprofile])
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

  # DELETE /stuprofiles/1
  # DELETE /stuprofiles/1.xml
  def destroy
    @stuprofile = Stuprofile.find(params[:id])
    @stuprofile.destroy

    respond_to do |format|
      format.html { redirect_to(stuprofiles_url) }
      format.xml  { head :ok }
    end
  end

end
