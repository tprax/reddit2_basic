Rails.application.routes.draw do
  root "subs#index"
  resources :subs
  # resources :subs, only: [:new, :create, :edit, :update]
  # resources :subs, except: [:index, :show, :delete]

  # get "/subs", to: "subs#index"
  # get "/subs/:id", to: "subs#show"
  # delete "/subs/:id", to: "subs#destroy" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
