require 'active_record'

class Tipo < ActiveRecord::Base
    self.table_name = "tipos"
    belongs_to :usuarios
end
