Rails.application.routes.draw do
  get 'anami/index'
  # get 'articles/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show]
end

