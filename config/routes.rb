Rails.application.routes.draw do
  resources :posts
   root 'static#home'
end
