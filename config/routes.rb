Rails.application.routes.draw do
  root "welcome#homepage"

  get 'messaging', to: 'welcome#send_message'
  
  resources :stores
  resources :books
end
