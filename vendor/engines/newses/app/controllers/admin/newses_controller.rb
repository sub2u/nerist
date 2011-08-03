module Admin
  class NewsesController < Admin::BaseController

    crudify :newse, :xhr_paging => true

  end
end
