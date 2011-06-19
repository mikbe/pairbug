# This file is used by Rack-based servers to start the application.
use Rack::Static, :urls => ['/index.html'], :root => 'public'

require ::File.expand_path('../config/environment',  __FILE__)
run Pairbug::Application
