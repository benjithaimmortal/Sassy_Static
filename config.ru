require 'sass/plugin/rack'

#middleware
use Rack::Static,
  :urls => [""],
  :root => ["public"],
  :index => 'index.html'

use Sass::Plugin::Rack

run Rack::File.new('/')