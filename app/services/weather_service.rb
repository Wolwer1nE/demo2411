require 'net/http'
require 'json'
class WeatherService
  def current_weather(location)
    params = {
        access_key: ENV['WEATHER_KEY'],
        query: location
    }
    puts params
    uri = URI('http://api.weatherstack.com/current')
    uri.query = URI.encode_www_form(params)
    json = Net::HTTP.get(uri)
    api_response = JSON.parse(json)
    puts api_response
    puts "Current temperature in #{api_response['location']['name']} is #{api_response['current']['temperature']}"
  end
end