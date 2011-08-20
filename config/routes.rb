Cocktails::Application.routes.draw do
  root :to => 'admin/cocktails#index'
  resources :cocktails,   :only => [:index, :show]
  resources :ingredients, :only => [:show]
  
  namespace :admin do
    resources :cocktails
    resources :ingredients
  end
end
