class CreateSabors < ActiveRecord::Migration[5.0]
  def change
    create_table :sabors do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
