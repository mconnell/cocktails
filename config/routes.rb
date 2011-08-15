Cocktails::Application.routes.draw do
  root :to => 'cocktails#index'
  resources :cocktails
  resources :ingredients
end
