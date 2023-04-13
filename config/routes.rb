Rails.application.routes.draw do
  get 'presenters/new'
  get 'presenters/edit'
  root 'videos#index'
  resources :videos
  resources :presenters
end
