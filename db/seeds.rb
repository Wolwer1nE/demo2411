# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
unless Item.any?
  top = ItemType.create!(name: 'Верхняя')
  shoes = ItemType.create!(name: 'Обувь')
  hats = ItemType.create!(name: 'Головные уборы')

  Item.create!(name: 'Куртка', item_type: top)
  Item.create!(name: 'Пальто', item_type: top)
  Item.create!(name: 'Кроссовки', item_type: shoes)
  Item.create!(name: 'Федора', item_type: hats)
end
unless Outfit.any?
  jacket = Item.find_by_name 'Куртка'
  coat = Item.find_by_name 'Пальто'
  sneakers = Item.find_by_name 'Кроссовки'
  fedora = Item.find_by_name 'Федора'

  jacket_outfit = Outfit.new
  jacket_outfit.items.append [jacket, sneakers, fedora]
  jacket_outfit.save!

  coat_outfit = Outfit.new
  coat_outfit.items.append [coat, sneakers, fedora]
  coat_outfit.save!
end
unless Weather.any?
  Weather.create!(name: 'Default', temp: 18)
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?