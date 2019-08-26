require 'active_record'

class Usuario < ActiveRecord::Base
    self.table_name = "usuarios"
    has_many :turmas
    has_one :tipos
end
