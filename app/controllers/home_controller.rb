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
  def newslist
    respond_to do |format|
     format.js do
           render do |page|

               page.replace_html "home",
                 :partial => "newslist"
           end
        end
  end
  end
  def happenlist
    respond_to do |format|
     format.js do
           render do |page|

               page.replace_html "home",
                 :partial => "happenlist"
           end
        end
  end
  end
  def happening
    @id=params[:id]
      respond_to do |format|
     format.js do
           render do |page|

               page.replace_html "home",
                 :partial => "happening"
           end
        end
  end
  end
end
