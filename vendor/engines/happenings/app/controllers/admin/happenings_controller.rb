module Admin
  class HappeningsController < Admin::BaseController

    crudify :happening, :xhr_paging => true

  end
end
