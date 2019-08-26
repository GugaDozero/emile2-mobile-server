class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.integer :turma_id
      t.integer :tipo_id
      t.string :login
      t.string :password
    end
  end
end
