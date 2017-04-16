Rails.application.routes.draw do
  root 'static#home'
  get '/about', to: 'static#about'
  get '/blog', to: 'static#blog'
  get '/projects', to: 'static#projects'
  get '/wiki', to: 'static#wiki'
  get '/tools', to: 'static#tools'
  get '/contact', to: 'static#contact'
  resources :posts
# resources :tags, :users, :comments, :sections, :posts

end
