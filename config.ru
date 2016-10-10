require 'grape'
require 'roda'
require './app'
require './auth'

use Rack::Session::Cookie, secret: ENV['SECRET']
use Auth
run API
