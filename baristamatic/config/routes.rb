Rails.application.routes.draw do
  
  root 'drinks#menu'
  get 'drinks' => 'drinks#menu'
  get 'drinks/new' => 'drinks#new'
  post 'drinks' => 'drinks#create'
  get 'drinks/:id' => 'drinks#show'
  delete 'drinks/:id' => 'drinks#destroy'

  get 'ingredients' => 'ingredients#inventory'
  get 'ingredients/new' => 'ingredients#new'
  post 'ingredients' => 'ingredients#create'
  get 'ingredients/:id' => 'ingredients#show'
  post 'ingredients/:id' => 'ingredients#delete'

end
