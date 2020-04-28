Rails.application.routes.draw do
  
  resources :bands
  
  root to: "bands#index"  

  # post "/bands/create", to: "bands#create"
  # get "/bands/new", to: "bands#new", as: "bands_new"
  # #to edit
  # get "/bands/:id/edit", to: "bands#edit", as: "bands_edit"
  # #update
  # get "/bands/:id", to: "bands#show", as: "band"
  # put "/bands/:id", to: "bands#update"
  # patch "/bands/:id", to: "bands#update"
  # delete "/bands/:id", to: "bands#destroy"

end








