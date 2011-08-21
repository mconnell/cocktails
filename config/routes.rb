Cocktails::Application.routes.draw do
  constraints(:host => /^www\./) do
    match "(*x)" => redirect do |params, request|
      URI.parse(request.url).tap {|url| url.host.sub!('www.', '') }.to_s
    end
  end

  root :to => 'cocktails#index'
  resources :cocktails,   :only => [:index, :show]
  resources :ingredients, :only => [:index, :show]

  resources :my_ingredients

  namespace :admin do
    resources :cocktails
    resources :ingredients
  end
end
