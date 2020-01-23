Rails.application.routes.draw do

  get 'rsvp/:code', to: 'rsvps#show'

end
