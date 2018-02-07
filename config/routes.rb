Rails.application.routes.draw do
  resources :tags
   
  root 'static#about'
  get '/bookmarks', to: 'static#bookmarks'  
  
  get '/asdf', to: 'static#asdf'
  get '/jsarrays', to: 'static#jsarrays'
  get '/zxcv', to: 'static#zxcv'
  get '/qwer', to: 'static#qwer'
  get '/assmt', to: 'static#assmt'
  get '/cernan', to: 'static#cernan'
  
  get '/bookmarks', to: 'static#bookmarks'
  get '/about', to: 'static#about'
  get '/blog', to: 'posts#index'
  
  get '/posts/new', to: 'posts#index'
  resources :posts, only: [:show, :index]
  resources :refs, :projects
end
