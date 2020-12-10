Rails.application.routes.draw do
  resources :notes
  resources :contacts
  resources :approaches
  resources :abouts
  resources :works
  resources :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
