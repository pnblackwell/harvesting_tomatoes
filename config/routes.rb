HarvestingTomatoes::Application.routes.draw do
  
  resources :harvest
  resources :users

  match '/', to: 'harvest#index'

end
