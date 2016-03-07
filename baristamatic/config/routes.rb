# == Route Map
#
#          Prefix Verb   URI Pattern                Controller#Action
#            root GET    /                          drinks#menu
#          drinks GET    /drinks(.:format)          drinks#menu
#      drinks_new GET    /drinks/new(.:format)      drinks#new
#                 POST   /drinks(.:format)          drinks#create
#                 GET    /drinks/:id(.:format)      drinks#show
#                 DELETE /drinks/:id(.:format)      drinks#destroy
#     ingredients GET    /ingredients(.:format)     ingredients#inventory
# ingredients_new GET    /ingredients/new(.:format) ingredients#new
#                 POST   /ingredients(.:format)     ingredients#create
#                 POST   /ingredients/:id(.:format) ingredients#delete
#

Rails.application.routes.draw do
  
  root 'drinks#menu'
  get 'drinks' => 'drinks#menu'

  get 'ingredients' => 'ingredients#inventory'

  get 'orders/new' => 'orders#new'
  post 'orders' => 'orders#create'

end
