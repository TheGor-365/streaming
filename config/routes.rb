Rails.application.routes.draw do
  root "welcome#homepage"
  resources :stores
  resources :books
end
