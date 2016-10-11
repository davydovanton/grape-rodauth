class API < Grape::API
  format :json
  prefix :api

  helpers do
    def rodauth
      env['rodauth']
    end

    def authenticate!
      error!('401 Unauthorized', 401) unless authenticated?
    end

    def authenticated?
      rodauth.authenticated?
    end
  end

  get :hello do
    { hello: 'world' }
  end

  namespace :private do
    before { authenticate! }

    get :hello do
      { hello: 'world' }
    end
  end
end
