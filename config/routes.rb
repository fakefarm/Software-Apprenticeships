ApprenticeJobs::Application.routes.draw do

  root to: "jobs#index"
  resources :jobs, only: [:index, :create, :show, :new]
  
  match "/preview" => "jobs#preview"
  match "/payment" => "jobs#payment"
  match "/about" => "pages#about"
  match "/terms" => "pages#terms"
  match "/why-hire-a-software-apprentice" => "pages#why"
  match "/apprenticeship-programs" => "pages#programs"
  
end
