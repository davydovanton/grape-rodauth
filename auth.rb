unless ENV['DATABASE_URL']
  $stderr.puts "Must set DATABASE_URL environment variable before running"
  exit(1)
end

require 'sequel'
require 'roda'

DB = Sequel.connect(ENV['DATABASE_URL'])

class Auth < Roda
  plugin :middleware

  plugin :rodauth do
    enable :login, :logout
  end

  route do |r|
    r.rodauth

    rodauth.require_authentication
  end
end
