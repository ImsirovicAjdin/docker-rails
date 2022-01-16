Rails.application.routes.draw do
  resources :players
  get 'welcome', to: 'welcome#index'
  root :to => "players#index"
end