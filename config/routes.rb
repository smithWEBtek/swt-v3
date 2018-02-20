Rails.application.routes.draw do
  resources :tags
   
  root 'static#home'
  get '/bookmarks', to: 'static#bookmarks'  
  
  get '/asdf', to: 'static#asdf'
  get '/zxcv', to: 'static#zxcv'
  get '/qwer', to: 'static#qwer'
  
  get '/bookmarks', to: 'static#bookmarks'
  get '/about', to: 'static#about'
  get '/blog', to: 'posts#index'
  
  get '/posts/new', to: 'posts#index'
  resources :posts, only: [:show, :index]
  resources :refs, :projects
end
