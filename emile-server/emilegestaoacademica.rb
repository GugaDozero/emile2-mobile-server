require 'sinatra'
require 'sinatra/activerecord'
require './config/environment' #database configuration

current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }

# Conferences

get '/' do
#  Teste.all.order(:id).to_json
    
    msg = ActiveRecord::Base.connection.execute("SELECT distinct nome_aluno FROM matriculadas INNER JOIN alunos ON matriculadas.aluno_id = alunos.id INNER JOIN disciplinas ON matriculadas.disciplina_id = disciplinas.id WHERE disciplinas.nome = 'padrões de projeto'")

    if msg.present?
        return msg.to_json
    else
        return nil
    end

end

get '/teste/:login/:pw' do
    msg = ActiveRecord::Base.connection.execute("select nome, tipo from usuarios where password = '" + params[:pw] + "' and login = '" + params[:login + "'")
    
    if msg.present?
        if msg.to_json != "[]"
            return msg.to_json
        else
            return "senha errada parceiro"
        end
    end
    #return params[:hehe]
end
