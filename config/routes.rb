Rails.application.routes.draw do

  root to: "application#landing_page"

  get 'rsvp/:code', to: 'rsvps#show'

  resources :rsvps, only: [:edit, :update]

  get '/details', to: 'application#details'
  get '/sunday', to: 'application#sunday'
  get '/accomodation', to: 'application#accomodation'
  get '/transport', to: 'application#transport'
  get '/gifts', to: 'application#gifts'

end
