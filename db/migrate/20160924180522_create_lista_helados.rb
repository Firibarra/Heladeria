class CreateListaHelados < ActiveRecord::Migration[5.0]
  def change
    create_table :lista_helados do |t|
      t.integer :pedido_id
      t.integer :helado_id

      t.timestamps
    end
  end
end
