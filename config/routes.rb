Rails.application.routes.draw do
  get 'newsletters/create'
  mount RailsAdmin::Engine => '/shopmyadmin', as: 'rails_admin'
  resources :adverts

  get 'profile/index'
  devise_for :users

  resources :newsletters


  root 'homes#index'
  get 'homes/index'
  
  get 'homes/faq'
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
end
