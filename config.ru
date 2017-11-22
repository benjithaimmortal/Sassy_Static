class Hello
    def self.call(env)
        [   200,
            {"Content-Type" => "text/html"},
            File.open('./public/index.html', File::RDONLY)
        ]
    end
end

#middleware
use Rack::Static,
    :urls => ["/stylesheets"],
    :root => ["public"]

puts "Hi. Rack's startup time was #{Time.now}.  Server is booting..."
run Hello