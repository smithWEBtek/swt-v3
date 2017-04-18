Rails.application.routes.draw do
  resources :refs
  resources :topics
  resources :groups
  resources :categories
  root 'static#home'

  get '/about', to: 'static#about'
  get '/blog', to: 'posts#index'
  get '/projects', to: 'static#projects'
  get '/wiki', to: 'refs#index'
  get '/tools', to: 'static#tools'
  get '/contact', to: 'static#contact'
  
  resources :users, :projects, :posts
end
