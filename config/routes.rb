Rails.application.routes.draw do  
 
  

  # main dashboards
  get                  'admin/dashboard' => 'dashboards#index'

  # sessions
  get                           "logout" => "sessions#destroy"
  get                       'ncrs/login' => 'sessions#new'
  get                     'ncrs/sign_up' => 'admins#new'

resources :sessions
resources :admins
resources :password_resets
end
