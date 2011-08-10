class EmpprofilesController < ApplicationController
  # GET /empprofiles
  # GET /empprofiles.xml
  def index
    @empprofiles = Empprofile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @empprofiles }
    end
  end

  # GET /empprofiles/1
  # GET /empprofiles/1.xml
  def show
    @empprofile = Empprofile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @empprofile }
    end
  end

  # GET /empprofiles/new
  # GET /empprofiles/new.xml
  def new
    
@empprofile = Empprofile.find_by_empid (params[:userid])
    if @empprofile.nil?
    @empprofile = Empprofile.new
    @empprofile.empid=params[:userid]
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

  # GET /empprofiles/1/edit
  def edit
    @empprofile = Empprofile.find(params[:id])
  end

  # POST /empprofiles
  # POST /empprofiles.xml
  def create
    @empprofile = Empprofile.new(params[:empprofile])

    respond_to do |format|
      if @empprofile.save
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

  # PUT /empprofiles/1
  # PUT /empprofiles/1.xml
  def update
    @empprofile = Empprofile.find(params[:id])

    respond_to do |format|
      if @empprofile.save
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

  # DELETE /empprofiles/1
  # DELETE /empprofiles/1.xml
  def destroy
    @empprofile = Empprofile.find(params[:id])
    @empprofile.destroy

    respond_to do |format|
      format.html { redirect_to(empprofiles_url) }
      format.xml  { head :ok }
    end
  end
end
