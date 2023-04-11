Rails.application.routes.draw do
  get 'employees/new'
  get 'employees/create'
  get 'contacts/new'
  get 'contacts/create'
  resources :daily_monitorings
  #get 'welcome/index'
  root to: 'welcome#index'
  
  get("/path1", { :controller => "medicines", :action => "create" })

  get("/path2", { :controller => "staffs", :action => "create" })

  
  resources :staffs, only: [:new, :create]
  

end
 
