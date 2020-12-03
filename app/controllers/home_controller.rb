class HomeController < ApplicationController

  def index
    @outfits = Outfit.all.preload(:items)
    @unrated = OutfitHistory.all
    if params[:weather_id].present?
      @weather = Weather.find(params[:weather_id])
    end
  end

  def select_location
    weather_data = WeatherService.new.current_weather(params['location'])
    @weather = Weather.new(weather_data)
    @weather.save!
    redirect_to action: 'index', weather_id: @weather
  end

  def choose_outfit
    @outfit = Outfit.find_by_id params[:id]
    history = OutfitHistory.new
    history.outfit = @outfit
    history.weather = Weather.first
    history.save
  end

end