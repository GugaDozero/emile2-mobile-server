# The environment variable DATABASE_URL should be in the following format:
# => postgres://{user}:{password}@{host}:{port}/path
#configure :production, :development do
 # db = URI.parse(ENV['DATABASE_URL'] || 'postgres://ofyrmwdeeapuav:5ad29bd45328edc4ed3b5d1df6e133780b951088e813cfe8141cee03fcfcf5ab@ec2-107-20-177-161.compute-1.amazonaws.com:5432/d4elvs9kgq0d37
#')
configure :production, :development do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres://postgres:gustavo@localhost/tcc')

  ActiveRecord::Base.establish_connection(
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end
