require 'sass/plugin/rack'

#middleware
use Rack::Static,
  :urls => [""],
  :root => ["public"],
  :index => 'index.html'

use Sass::Plugin::Rack

run Proc.new {
    |env| ['200', {"Content-Type" => "text/html"}, File.open('./public/index.html', File::RDONLY)]
}

