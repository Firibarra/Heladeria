class CreateBanos < ActiveRecord::Migration[5.0]
  def change
    create_table :banos do |t|
      t.string :descripcion
      t.integer :valor

      t.timestamps
    end
  end
end
