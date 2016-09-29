class Venderor < ApplicationRecord
  validates :nombre,presence:true
  validates :apellido_p,presence:true
  validates :apellido_m,presence:true
  validates :rut,presence:true
  validates :verifi,presence:true
  has_many :pedidos
end
