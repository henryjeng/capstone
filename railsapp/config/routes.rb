Rails.application.routes.draw do
  get 'heartrates/graph/:id', to: 'heartrates#graph'
  get 'heartrates/device', to: 'heartrates#device'
  get 'heartrates/index'
  get 'login/index'
  get 'stats/index'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/stats/index/:id', to: 'stats#index'
  post 'welcome/index', to: 'welcome#search'
  get '/login/gen', to: 'login#gen'
  get '/login/authenticate', to: 'login#authenticate'
  resources :heartrates

  # root :to => redirect('/login/index')
  root 'heartrates#index'
end

