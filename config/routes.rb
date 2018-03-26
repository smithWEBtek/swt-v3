Rails.application.routes.draw do

  resources :categories
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'static#home'
  get '/asdf', to: 'static#asdf'
  get '/zxcv', to: 'static#zxcv'
  get '/qwer', to: 'static#qwer'

  get '/about', to: 'static#about'
  get '/flatiron', to: 'static#flatiron'
	get '/blog', to: 'posts#index'
	get '/tek', to: 'refs#tek'
 

	get '/export_bookmarks_csv', to: 'bookmarks#export_csv'

	# get 'scrape_bookmarks', to: 'ref#scrape_bookmarks'

	# get 'reload_books', to: 'ref#reload_books'

  resources :posts, :refs, :projects, :tags, :bookmarks, :books
end
