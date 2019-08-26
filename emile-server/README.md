# agora-server
Server-side functionalities for Ágora Mobile

# Installation

1. Install ruby
2. Run 'gem install bundler'
3. Run 'export PATH=$PATH:~/.gem/ruby/2.3.0/bin'
4. Run 'bundle install'
5. Setup your postgres database and user (e.g. agora database with agora user - agora password)
6. Run 'export DATABASE_URL="postgres://agora:agora@localhost/agora"'
7. Run 'rake db:migrate'
8. Run 'psql -U agora -W agora'
9. Enter password 'agora'
10. Populate database by running '\i populate-database.sql'
11. Install heroku-toolbelt
12. Run 'heroku login'
13. Run 'heroku local web'
14. To push your local postgresql data to heroku's server, run './pg-push.sh'
15. Enjoy!
