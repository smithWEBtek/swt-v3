Rails.application.routes.draw do
  resources :tags
   
  root 'static#about'
  get '/bookmarks', to: 'static#bookmarks'  
  
  get '/index2', to: 'static#index2'

  get '/bookmarks', to: 'static#bookmarks'
  get '/about', to: 'static#about'
  get '/blog', to: 'posts#index'
  
  get '/posts/new', to: 'posts#index'
  resources :posts, only: [:show, :index]
  resources :refs, :projects
end
