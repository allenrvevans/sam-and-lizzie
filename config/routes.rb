Rails.application.routes.draw do

  get 'find_code', to: 'rsvps#new'
  post 'search', to: 'rsvps#search'
  
end