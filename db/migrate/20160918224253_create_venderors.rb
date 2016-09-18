class CreateVenderors < ActiveRecord::Migration[5.0]
  def change
    create_table :venderors do |t|
      t.string :nombre
      t.string :apellido_p
      t.string :apellido_m
      t.integer :rut
      t.string :verifi

      t.timestamps
    end
  end
end
