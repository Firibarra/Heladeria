Rails.application.routes.draw do
  devise_for :vendedors
  #root to: "windows#entrada"
  root to: "clientes#index"
  #get'inicio' => 'vendedors/sign_in'
  #/vendedors/sign_in
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
