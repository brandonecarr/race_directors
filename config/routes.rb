Rails.application.routes.draw do
# Defines the root path route ("/")
  root 'pages#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    devise_for :directors, controllers: {
      sessions: 'director/sessions',
      registration: 'director/registration'
    }

    devise_for :athletes, controllers: {
      sessions: 'athlete/sessions',
      registration: 'athlete/registration'
    }

    get 'pages/athlete'
    get 'pages/director'
end