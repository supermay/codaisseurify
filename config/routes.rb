Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists
  resources :artists do
    resources :songs, only: [:new,:create,:destroy]
  end 

end
