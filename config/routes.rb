Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # devise url's
  devise_for :users
  # Root URL
  root to: "home#index"

end
