Rails.application.routes.draw do

  get 'rsvp/:code', to: 'rsvps#show'
  
  # post 'search', to: 'rsvps#search'

end