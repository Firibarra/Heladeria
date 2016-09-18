class CreateBoleta < ActiveRecord::Migration[5.0]
  def change
    create_table :boleta do |t|
      t.integer :monto
      t.integer :descuento
      t.date :fecha
      t.integer :pedido_id

      t.timestamps
    end
  end
end
