class CreatePedidos < ActiveRecord::Migration[5.0]
  def change
    create_table :pedidos do |t|
      t.date :fecha
      t.integer :cliente_id
      t.integer :venderor_id

      t.timestamps
    end
  end
end
