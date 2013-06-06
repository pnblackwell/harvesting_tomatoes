HarvestingTomatoes::Application.routes.draw do
  
  resources :harvest_info
  resources :users
  resources :timers, only: [] do
    member do
      get :toggle
      get :get_tasks
      get :get_daily_info
    end
  end

  match '/', to: 'harvest_info#index', as: 'dashboard'
  match '/auth/harvest/callback', to: 'sessions#create'
  match '/signout', to: 'sessions#destroy', as: 'signout'

end
