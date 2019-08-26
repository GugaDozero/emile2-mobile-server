require 'active_record'

class Turma < ActiveRecord::Base
    has_and_belongs_to_many :alunos
    has_many :disciplinas
    has_and_belongs_to_many :usuarios
end
