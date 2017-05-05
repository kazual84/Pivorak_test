Rails.application.routes.draw do
  root 'jorneys#index'
  resources :jorneys
end
