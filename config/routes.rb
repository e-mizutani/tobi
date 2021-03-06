Rails.application.routes.draw do

  root to: 'tops#top'
  resources :contacts do
    resources :responses
    collection do
      post :confirm
    end
  end

  resources :contacts do
    member do
      get "show_favorites" => "favorites#show_favorites"    
    end
  end
  resources :sessions, only:[:new, :create, :destroy]
  resources :users
  resources :favorites, only:[:create, :destroy, :show, :index, :show_favorites]

end
