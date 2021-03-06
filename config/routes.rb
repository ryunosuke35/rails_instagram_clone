Rails.application.routes.draw do

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  resources :pictures do
    collection do
      post :confirm
    end
    member do
      patch :confirm
    end
  end

  resources :sessions, only: [:new, :create, :destroy]


  resources :users, only: [:new, :create, :show, :edit, :update]


  resources :favorites, only: [:create, :destroy, :index]


end
