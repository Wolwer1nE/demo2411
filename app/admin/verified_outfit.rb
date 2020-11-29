ActiveAdmin.register VerifiedOutfit do
  permit_params :weather_id, :outfit_id

  form do |f|
    f.inputs do
      f.input :weather_id, as: :select, collection: Weather.all.collect {|w| ["#{w.temp}-#{w.humidity}", w.id] }
      f.input :outfit_id, as: :select, collection: Outfit.all.collect {|a| [a.id, a.id] }
    end
    f.submit
  end
end