Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, skip: :all
  devise_scope :user do
    get 'users/sign_in' => 'users/sessions#new', as: 'new_user_session'
    post 'users/sign_in' => 'users/sessions#create', as: 'user_session'
    delete 'users/sign_out' => 'users/sessions#destroy', as: 'destroy_user_session'
    get 'users/sign_up' => 'users/registrations#new', as: 'new_user_registration'
    post 'users' => 'users/registrations#create', as: 'user_registration'
    get 'users/password/new' => 'users/passwords#new', as: 'new_user_password'
  end
  
  namespace :users do
    get 'homes/top'
    get 'homes/index'
    resources :shipments do
      collection do
        post :confirm
      end
    end
    resources :constructions
    resources :bodies
    resources :companies
  end

  

  root 'users/homes#index'
end
