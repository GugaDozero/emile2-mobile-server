class CreateTipos < ActiveRecord::Migration[5.0]
  def change
    create_table :tipos do |t|
      t.string :tipo
      t.integer :tipo_id
    end
  end
end
