require 'active_record'

class Disciplina < ActiveRecord::Base
    has_many :turmas
    has_many :usuarios
end
