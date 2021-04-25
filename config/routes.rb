Rails.application.routes.draw do
  devise_for :users
  resources :friends, except: :index
  #get 'home/index'
  #root 'home#index'

          authenticated  do
            root to: 'friends#index'
         end

        unauthenticated do
              root to: 'home#index', as: 'unauthenticated_root'
        end

  get 'home/about'
end
