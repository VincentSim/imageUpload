Rails.application.routes.draw do
  resources :articles do
    member do
      post :add_file
    end
  end

  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
