class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido_p
      t.string :apellido_m
      t.integer :rut
      t.string :verifi

      t.timestamps
    end
  end
end
