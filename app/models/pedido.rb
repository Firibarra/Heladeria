class Pedido < ApplicationRecord
  belongs_to :cliente
  belongs_to :venderor

  has_many :lista_helados
  has_many :boleta
end
