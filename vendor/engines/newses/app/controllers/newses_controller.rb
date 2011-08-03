class NewsesController < ApplicationController

  before_filter :find_all_newses
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @newse in the line below:
    present(@page)
  end

  def show
    @newse = Newse.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @newse in the line below:
    present(@page)
  end

protected

  def find_all_newses
    @newses = Newse.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/newses").first
  end

end
