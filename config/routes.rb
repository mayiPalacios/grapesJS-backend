Rails.application.routes.draw do
  
 namespace :api do
  
  resources :grape, only: [:create,:index]

 end


end
