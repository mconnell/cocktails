Cocktails::Application.routes.draw do
  root :to => 'cocktails#index'
  resources :cocktails,   :only => [:index, :show]
  resources :ingredients, :only => [:index, :show]

  resources :my_ingredients

  namespace :admin do
    resources :cocktails
    resources :ingredients
  end
end
