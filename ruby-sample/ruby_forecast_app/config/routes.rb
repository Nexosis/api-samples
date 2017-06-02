Rails.application.routes.draw do
  get 'results/index'

  get 'account/', to: 'account#index'
  get 'account/sessions'
  get 'account/session/:session_id', controller: 'account', action: 'session_status'
  post 'account/upload'
  get 'results/:sessionId', to: 'results#index'
  get 'results/champion/:dataset_name/:target_column', controller: 'results', action: 'champion'
  get 'account/forecast/:dataset_name', controller: 'account', action: 'forecast'
  get 'account/impact/:dataset_name', controller: 'account', action: 'impact'
  post 'account/forecast/:dataset_name', controller: 'account', action: 'create_forecast'
  post 'account/impact/:dataset_name', controller: 'account', action: 'create_impact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end