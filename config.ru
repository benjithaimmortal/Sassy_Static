class Hello
    def self.call(env)
        [ 200,
            {"Content-Type" => "text/html"},
            ["
        	<html>
        		<body>
        			<h1>Hello World</h1>
        		</body>
        	</html>
            "]
        ]
    end
end

run Hello