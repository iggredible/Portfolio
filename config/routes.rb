Rails.application.routes.draw do
  devise_for :users
  resources :experiences, except: [:show]

  get 'react-items', to: 'experiences#react'
  get 'experience/:id', to: 'experiences#show', as: 'experience_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end
