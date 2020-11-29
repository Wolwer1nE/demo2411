require 'net/http'
require 'json'
class WeatherService
  def current_weather(location)
    params = {
        access_key: ENV['WEATHER_KEY'],
        query: location
    }
    uri = URI('http://api.weatherstack.com/current')
    uri.query = URI.encode_www_form(params)
    json = Net::HTTP.get(uri)
    data = JSON.parse(json)
    weather = data['current']
    {
        temp: weather['temperature'],
        humidity: weather['humidity'],
        wind_speed: weather['wind_speed'],
        feels_like: weather['feelslike'],
        description: weather['weather_descriptions'].first
    }
  end
end