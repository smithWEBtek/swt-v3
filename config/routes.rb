Rails.application.routes.draw do
  devise_for :users
  root 'static#about'
  get '/bookmarks', to: 'static#bookmarks'  
  get '/free_books', to: 'static#free_books'  
 
  get '/bookmarks', to: 'static#bookmarks'
  get '/about', to: 'static#about'
  get '/blog', to: 'posts#index'
  get '/tools', to: 'static#tools'
  get '/contact', to: 'static#contact'
  
  get '/posts/new', to: 'posts#index'
  resources :posts, only: [:show, :index]
  resources :refs, :topics, :groups, :users, :projects
end
