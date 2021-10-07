Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :books
  devise_for :users
	resources :resumes, only: [:index, :new, :create, :destroy]
   root "resumes#index"
  #get 'resumes/index'
  #get 'resumes/new'
  #get 'resumes/create'
  #get 'resumes/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
