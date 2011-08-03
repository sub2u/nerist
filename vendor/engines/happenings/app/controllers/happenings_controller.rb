class HappeningsController < ApplicationController

  before_filter :find_all_happenings
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @happening in the line below:
    present(@page)
  end

  def show
    @happening = Happening.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @happening in the line below:
    present(@page)
  end

protected

  def find_all_happenings
    @happenings = Happening.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/happenings").first
  end

end
