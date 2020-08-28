

class UpcaseAll
    def initialize(app)
        @app = app
    end

    def call(env)
        status, headers, response = @app.call(env)

        response.upcase!

        [status, headers, response]
    end
end