::Refinery::Application.routes.draw do
  resources :newses, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :newses, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
