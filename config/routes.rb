HarvestingTomatoes::Application.routes.draw do
  
  resources :harvest_info
  resources :users
  resources :timers, only: [] do
    member do
      get :toggle
    end
  end

  match '/', to: 'harvest_info#index', as: 'dashboard'

end
