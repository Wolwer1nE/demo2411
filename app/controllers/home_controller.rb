class HomeController < ApplicationController

  def index
    @outfits = Outfit.all
    @unrated = OutfitHistory.all
  end

  def choose_outfit
    @outfit = Outfit.find_by_id params[:id]
    history = OutfitHistory.new
    history.outfit = @outfit
    history.weather = Weather.first
    history.save
  end
end