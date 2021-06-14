Rails.application.routes.draw do
  root 'static_pages#home'
  get 'customers/new'
  get 'entries/sign_in'
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get 'entries/sign_in' => 'entries#sign_in'
  post 'entries/sign_in' => 'entries#sign_in'
  get '/signup', to: 'customers#new'
  post '/signup', to: 'customers#create'
  resources :microposts
  resources :users
  resources :customers
end
