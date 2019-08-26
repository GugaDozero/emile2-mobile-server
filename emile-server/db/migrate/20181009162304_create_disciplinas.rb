class CreateDisciplinas < ActiveRecord::Migration[5.0]
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.string :nome_professor
      t.integer :turma_id
    end
  end
end
