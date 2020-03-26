Rails.application.routes.draw do
  get '/', to: 'welcome#index', as: 'welcome'
  resources :posts
  resources :users
  #resources :welcome
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
