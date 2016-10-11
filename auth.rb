RODAUTH_DATABASE_URL="postgres://localhost/rodauth_hanami_development"

require 'sequel'
require 'roda'

DB = Sequel.connect(RODAUTH_DATABASE_URL)

class Auth < Roda
  plugin :middleware

  plugin :rodauth, json: true do
    enable :login, :logout, :jwt

    account_password_hash_column :password_hash

    jwt_secret '1'
  end

  route do |r|
    r.rodauth

    rodauth.require_authentication
  end
end
