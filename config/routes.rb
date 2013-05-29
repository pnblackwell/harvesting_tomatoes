HarvestingTomatoes::Application.routes.draw do
  
  resources :harvest
  resources :tasks

  match '/', to: 'harvest#index'

end
