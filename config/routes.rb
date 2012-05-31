ApprenticeJobs::Application.routes.draw do

  get "users/new"

  get "users/create"
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :admins, only: [:index, :show, :new]
  resources :users
  resources :sessions

  root to: "jobs#index"
  resources :jobs, only: [:index, :create, :show, :new]
  
  match "/jobs/:id" => "jobs#update"
  match "/jobs/preview" => "jobs#preview"
  match "/payment" => "jobs#payment"
  match "/about" => "pages#about"
  match "/terms" => "pages#terms"
  match "/why-hire-a-software-apprentice" => "pages#why"
  match "/apprenticeship-primers" => "pages#programs"
  
end
