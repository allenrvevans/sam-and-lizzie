Rails.application.routes.draw do

  root to: "application#landing_page"

  get 'rsvp/thanks', to: 'rsvps#thanks'
  get 'rsvp/:code', to: 'rsvps#edit'
  put 'rsvp/:code', to: 'rsvps#update'

  #resources :rsvps, only: [:edit, :update]

  get '/details', to: 'application#details'
  get '/sunday', to: 'application#sunday'
  get '/accomodation', to: 'application#accomodation'
  get '/transport', to: 'application#transport'
  get '/gifts', to: 'application#gifts'
  get '/rsvp', to: 'application#rsvp'

end
