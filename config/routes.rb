Rails.application.routes.draw do
  resources :resources

  resources :site_package_flow_comments

  resources :site_package_flows

  resources :site_packages

  resources :sites

  resources :notices

  resources :flows

  resources :packages

  root to: 'visitors#index'
  #get 'pages/index' => 'high_voltage/pages#show', id: 'index'

  devise_for :users
  resources :users
end
