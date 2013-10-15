DemoRenuoCh::Application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root :to => "home#index"
  resources :users
end