Rails.application.routes.draw do
	
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'static#home'
  get '/asdf', to: 'static#asdf'
  get '/zxcv', to: 'static#zxcv'
  get '/qwer', to: 'static#qwer'
	
  get '/about', to: 'static#about'
	get '/blog', to: 'posts#index'
	get '/posts/new', to: 'posts#index'

	# get 'scrape_bookmarks', to: 'ref#scrape_bookmarks'

	# get 'reload_books', to: 'ref#reload_books'

  resources :posts, only: [:show, :index]
  resources :refs, :projects, :tags, :bookmarks
end
