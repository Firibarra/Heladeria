class CreateHelados < ActiveRecord::Migration[5.0]
  def change
    create_table :helados do |t|
      t.integer :valor
      t.integer :tipo_id
      t.integer :copo_id
      t.integer :sabor_id
      t.integer :salsa_id
      t.integer :chip_id
      t.integer :galletum_id
      t.integer :bano_id

      t.timestamps
    end
  end
end
