class AddClaveToVenderor < ActiveRecord::Migration[5.0]
  def change
    add_column :venderors, :clave, :string
  end
end
