Rails.application.routes.draw do

  root to: "pages#landing_page"

  get 'rsvp/thanks', to: 'rsvps#thanks'
  get 'rsvp/:code', to: 'rsvps#edit'
  put 'rsvp/:code', to: 'rsvps#update'

  #resources :rsvps, only: [:edit, :update]

  get '/details', to: 'pages#details'
  get '/sunday', to: 'pages#sunday'
  get '/accomodation', to: 'pages#accomodation'
  get '/transport', to: 'pages#transport'
  get '/gifts', to: 'pages#gifts'
  get '/rsvp', to: 'pages#rsvp'

end
