Rails.application.routes.draw do
  root 'apis#index'

  devise_for :users, controllers: { registrations: 'registrations' }

  resources :apis, only: [:index, :show, :new, 
                          :create, :edit, :update, :destroy] do

    resources :reviews, only: [:index, :new, 
                               :create, :edit, :update, :destroy] do
      member do
        post 'upvote'
        post 'downvote'
      end
    end
  end
  resources :users, only: [:index, :show, :destroy]
end
