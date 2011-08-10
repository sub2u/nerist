class CustomersController < ApplicationController
  # GET /customers
  # GET /customers.xml
  def index
    @customers = Customer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @customers }
    end
  end

  # GET /customers/1
  # GET /customers/1.xml
  def show
    @customer = Customer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @customer }
    end
  end

  # GET /customers/new
  # GET /customers/new.xml
  def new
    @customer = Customer.new

    respond_to do |format|
     format.js do
           render do |page|

               page.replace_html "home",
                 :partial => "form"
           end
        end
  end
  end

  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
  end

  # POST /customers
  # POST /customers.xml
  def create
    @customer = Customer.new(params[:customer])

    respond_to do |format|
      if @customer.save
      format.js do
           render do |page|

               page.replace_html "home","<div class='loading'>User created successfully.</div>"
                
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

  # PUT /customers/1
  # PUT /customers/1.xml
  def update
    @customer = Customer.find(params[:id])

   respond_to do |format|
      if @customer.save
      format.js do
           render do |page|

               page.replace_html "personal","<div class='loading'>User Updated successfully.</div>"

           end
        end
      else
         format.js do
           render do |page|

               page.replace_html "personal","<div style=\"color:red;\">Please enter all values.</div>"
                 
           end
        end

       end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.xml
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to(customers_url) }
      format.xml  { head :ok }
    end
  end

  def login
    user= Customer.authenticate(params[:user][:login],params[:user][:password])
#    $S=params[:user][:password]
    if user
      session[:user] = user.id
      flash[:notice] ="Login Successfull"
      redirect_to "/home"
    else
      flash[:error] = "Login Fail"
      redirect_to :controller=>'home', :action=>"home"
    end
  end
  def logout
    session[:user]=nil
    flash[:notice]='Logged out'
    redirect_to :controller =>'home', :action=>'home'
  end
  def signin

  end
end
