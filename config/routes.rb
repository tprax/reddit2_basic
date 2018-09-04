Rails.application.routes.draw do
  root "subs#index"

  resources :subs do
    resources :topics
  end

  # resources :topics do 
  #   resources :comments
  # end

  scope "topics/:topic_id", as: "topic" do
    resources :comments, only: [:new, :create]
  end




  # resources :subs, only: [:new, :create, :edit, :update]
  # resources :subs, except: [:index, :show, :delete]

  # get "/subs", to: "subs#index"
  # get "/subs/:id", to: "subs#show"
  # delete "/subs/:id", to: "subs#destroy" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
