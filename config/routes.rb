Rails.application.routes.draw do
  
  resources :lista_helados
  resources :lista_sabors
  resources :helados
  resources :sabors
  resources :salsas
  resources :chips
  resources :galleta
  resources :banos
  resources :copos
  resources :tipos
  resources :boleta
  resources :pedidos
  resources :venderors
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
