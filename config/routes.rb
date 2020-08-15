Rails.application.routes.draw do
  devise_for :users
  get 'jobs/index'
  
  # For details on the DSL available within this file, see http://guidoes.rubyonrails.org/routing.html

  get '/homes/about'  => 'homes#about'
  get 'homes/inquery' => 'homes#inquery'
  
  resources :users, onry: [:index,:show,:create,:edit] do
    resource :nicetry, only: [:create,:destroy]
  end
  resources :jobs, onry: [:index]
  resources :projects do
    resource :favorite
    resource :flow
    resource :cost
  end
  root 'homes#about'

end
