Rails.application.routes.draw do
  
 namespace :api do
  
  resources :grape_template, only: [:create,:index]

 end


end
