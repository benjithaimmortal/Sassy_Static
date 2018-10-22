
run Proc.new {
    |env| ['200', {"Content-Type" => "text/html"}, File.open('./public/index.html', File::RDONLY)]
}

#middleware
use Rack::Static,
    :urls => ["/stylesheet, /img"],
    :root => ["public"]