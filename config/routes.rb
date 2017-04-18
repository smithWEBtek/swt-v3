Rails.application.routes.draw do
  root 'static#about'

  get '/about', to: 'static#about'
  get '/blog', to: 'posts#index'
  get '/tools', to: 'static#tools'
  get '/contact', to: 'static#contact'
  
  resources :refs, :topics, :groups, :users, :projects, :posts
end
