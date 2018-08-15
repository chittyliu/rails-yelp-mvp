Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    collection do
      delete ":id", to: "restaurants#destroy", as: :destroy
    end
  end
end
