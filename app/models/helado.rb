class Helado < ApplicationRecord
  has_many :lista_helados
  has_many :lista_sabors
  
  belongs_to :Bano
  belongs_to :Chip
  belongs_to :Copo
  belongs_to :Galletum
  belongs_to :Salsa
  belongs_to :Tipo

end
