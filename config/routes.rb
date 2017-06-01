Rails.application.routes.draw do
  get 'risk/show'

  get 'welcome/show'
  get 'risk/show'
  post '/' => "welcome#calculate", as: "root"
  post 'welcome/back'
  root 'welcome#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
