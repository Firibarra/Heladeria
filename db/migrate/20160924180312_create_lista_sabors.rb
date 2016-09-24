class CreateListaSabors < ActiveRecord::Migration[5.0]
  def change
    create_table :lista_sabors do |t|
      t.integer :helado_id
      t.integer :sabor_id

      t.timestamps
    end
  end
end
