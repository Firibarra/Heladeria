class CreateGalleta < ActiveRecord::Migration[5.0]
  def change
    create_table :galleta do |t|
      t.string :descripcion
      t.integer :valor

      t.timestamps
    end
  end
end
