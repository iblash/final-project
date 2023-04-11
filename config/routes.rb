Rails.application.routes.draw do
  resources :daily_monitorings
  #get 'welcome/index'
  root to: 'welcome#index'
  
  
end
 
