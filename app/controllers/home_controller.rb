class HomeController < ApplicationController
    require 'net/http'
    def index
        url = "https://api.openweathermap.org/data/2.5/weather?lat=-1.935114&lon=30.082111&appid=4160b8edff7b312aef70efc4f687e18d"

        uri = URI(url)
        res = Net::HTTP.get_response(uri)
        @data = JSON.parse(res.body)
    end
end