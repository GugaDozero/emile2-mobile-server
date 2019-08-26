class CreateTurmas < ActiveRecord::Migration[5.0]
  def change
    create_table :turmas do |t|
      t.integer :aluno_id
      t.integer :disciplina_id
      t.integer :usuario_id
      t.string :nome_aluno
      t.string :nome_usuario
      t.string :nome_disciplina
    end
  end
end
