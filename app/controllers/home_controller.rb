require 'uri'
require 'net/http'

class HomeController < ApplicationController
 def index
  uri = URI("https://api.openweathermap.org/data/2.5/weather?lat=18.4861&lon=69.9312&units=imperial&appid=c01c828cb99712c3394da58652534d5d")
  res = Net::HTTP.get_response(uri)
  puts res.body if res.is_a?(Net::HTTPSuccess)
  @data = JSON.parse(res.body)
 end 
end 