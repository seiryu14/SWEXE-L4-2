Rails.application.routes.draw do
  get 'top/main'
  post 'top/login'
  root 'top#main'
  delete 'logout',to: "top#destroy"
  #get "application/L4"
  #root "application#L4"
end
