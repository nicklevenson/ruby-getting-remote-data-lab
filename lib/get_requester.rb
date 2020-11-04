# Write your code here
require 'json'
require 'open-uri'
require 'net/http'
class GetRequester
    attr_accessor :url
    def initialize(string)
        @url = string
        get_response_body
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        JSON.parse(get_response_body)
    end





end
