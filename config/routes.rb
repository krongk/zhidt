Rails.application.routes.draw do
  resources :site_package_flow_comments

  resources :site_package_flows

  resources :site_packages

  resources :sites

  resources :notices

  resources :flows

  resources :packages

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
