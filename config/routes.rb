Rails.application.routes.draw do

  root to: "application#landing_page"

  get 'rsvp/:code', to: 'rsvps#show'

  resources :rsvps, only: [:edit, :update]
end
