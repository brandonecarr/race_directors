Rails.application.routes.draw do
# Defines the root path route ("/")
  root 'pages#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    devise_for :directors, controllers: {
      sessions: 'director/sessions',
      registrations: 'director/registrations',
      confirmations: 'director/confirmations',
      passwords: 'director/passwords'
    }

    devise_for :athletes, controllers: {
      sessions: 'athlete/sessions',
      registrations: 'athlete/registrations',
      confirmations: 'athlete/confirmations',
      passwords: 'athlete/passwords'
    }

    get 'pages/athlete'
    get 'pages/director'
end