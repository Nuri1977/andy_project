Rails.application.routes.draw do

  as :user do
    put '/user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end
  
  devise_for :users, controllers: {
    confirmations: 'confirmations'
  }

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
