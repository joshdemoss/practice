require 'rack'
require_relative 'special_treatment_middleware'
require_relative 'upcase_all_middleware'

class RackApp
    def call(env)
        req = Rack::Request.new(env)
        [200, {"Content-Type" => "text/plain"}, "Hello from Rack - #{req.ip}"]
    end
end

app = 
Rack::Builder.new do |builder|
    # List middleware from last to first
    # That is the order that builder uses them in.
    builder.use SpecialTreatment
    builder.use UpcaseAll
    builder.run RackApp.new
end

handler = Rack::Handler::Thin
handler.run app