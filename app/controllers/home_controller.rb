class HomeController < ApplicationController

  def home
  end
  def news
    @id=params[:id]
      respond_to do |format|
     format.js do
           render do |page|

               page.replace_html "home",
                 :partial => "news"
           end
        end
  end
  end
end
