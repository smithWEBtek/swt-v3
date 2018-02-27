Rails.application.routes.draw do
	
  root 'static#home'
  get '/asdf', to: 'static#asdf'
  get '/zxcv', to: 'static#zxcv'
  get '/qwer', to: 'static#qwer'
	
  get '/about', to: 'static#about'
	get '/blog', to: 'posts#index'
	get '/posts/new', to: 'posts#index'

	get '/bookmarks', to: 'static#bookmarks'	
	get 'scrape_bookmarks', to: 'ref#scrape_bookmarks'

	get 'reload_books', to: 'ref#reload_books'


  resources :posts, only: [:show, :index]
  resources :refs, :projects, :tags
end
