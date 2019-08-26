require 'active_record'

class Aluno < ActiveRecord::Base
    has_one :turmas
end
