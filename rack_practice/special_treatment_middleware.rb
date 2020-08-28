require 'rack'

class SpecialTreatment
    def initialize(app)
        @app = app
    end

    def call(env)
        req = Rack::Request.new(env)
        status, headers, response = @app.call(env)

        if req.ip == "127.0.0.1" || "::1"
            [status, headers, response+" \nWelcome sir! " + 
            "I'm happy to serve your requests ;)"]
        else
            [status, headers, respones]
        end
    end
end