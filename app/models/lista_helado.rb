class ListaHelado < ApplicationRecord
  belongs_to :pedido
  belongs_to :helado
end
