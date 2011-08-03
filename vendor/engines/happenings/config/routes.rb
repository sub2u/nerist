::Refinery::Application.routes.draw do
  resources :happenings, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :happenings, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
