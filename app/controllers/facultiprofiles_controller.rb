class FacultiprofilesController < ApplicationController
  # GET /facultiprofiles
  # GET /facultiprofiles.xml
  def index
    @facultiprofiles = Facultiprofile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @facultiprofiles }
    end
  end

  # GET /facultiprofiles/1
  # GET /facultiprofiles/1.xml
  def show
    @facultiprofile = Facultiprofile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @facultiprofile }
    end
  end

  # GET /facultiprofiles/new
  # GET /facultiprofiles/new.xml
  def new
    @facultiprofile = Facultiprofile.find_by_empid (params[:userid])
    if @facultiprofile.nil?
    @facultiprofile = SFacultiprofile.new
    @facultiprofile.empid=params[:userid]
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

  # GET /facultiprofiles/1/edit
  def edit
    @facultiprofile = Facultiprofile.find(params[:id])
  end

  # POST /facultiprofiles
  # POST /facultiprofiles.xml
  def create
    @facultiprofile = Facultiprofile.new(params[:facultiprofile])
    respond_to do |format|
      if @facultiprofile.save
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

  # PUT /facultiprofiles/1
  # PUT /facultiprofiles/1.xml
  def update
    @facultiprofile = Facultiprofile.find(params[:id])

    respond_to do |format|
      if @facultiprofile.update_attributes(params[:facultiprofile])
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

  # DELETE /facultiprofiles/1
  # DELETE /facultiprofiles/1.xml
  def destroy
    @facultiprofile = Facultiprofile.find(params[:id])
    @facultiprofile.destroy

    respond_to do |format|
      format.html { redirect_to(facultiprofiles_url) }
      format.xml  { head :ok }
    end
  end
end
