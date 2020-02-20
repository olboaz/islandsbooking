require 'faker'
require 'open-uri'
require 'nokogiri'
require 'json'



User.destroy_all
puts 'Creating Users'
u1 = User.create!(
  email: 'paul.heilweck@gmail.com',
  first_name: 'Paul',
  last_name: 'Heilweck',
  username: 'Pucktor',
  password: '123456',
  password_confirmation: '123456'
)

u2 = User.create!(
  email: 'julien.heilweck@gmail.com',
  first_name: 'Julien',
  last_name: 'Srapinute',
  username: 'Zerash',
  password: '123456',
  password_confirmation: '123456'
)

u3 = User.create!(
  email: 'zilito.heilweck@gmail.com',
  first_name: 'Zilito',
  last_name: 'Heilweck',
  username: 'Strongman',
  password: '123456',
  password_confirmation: '123456'
)

u4 = User.create!(
  email: 'eriko.heilweck@gmail.com',
  first_name: 'Eriko',
  last_name: 'Villiani',
  username: 'Mafoboy',
  password: '123456',
  password_confirmation: '123456'
)

u5 = User.create!(
  email: 'tartare.heilweck@gmail.com',
  first_name: 'Tartare',
  last_name: 'Glem',
  username: 'Jigglypuff',
  password: '123456',
  password_confirmation: '123456'
)
puts '3 users created !'

url = 'https://en.wikipedia.org/wiki/List_of_islands_by_area'
page = Nokogiri::HTML(open(url))
names = []
areas = []
countries = []
page.search('tbody tr td[2] a:nth-of-type(1)').each do |i|
   names << i.text.strip
end
page.search('tbody tr td[3] > text()').each do |i|
   areas << i.text.strip
end
page.search('tbody tr td[5] a:nth-of-type(1)').each do |i|
   countries << i.text.strip
end
puts names[325]
puts names[0]


# json_url = 'https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exsentences=2&exintro&explaintext&redirects=1&titles=Greenland'
# description_serialized = open(json_url).read
# description = JSON.parse(description_serialized)

# puts description['extract']

Island.destroy_all
for i in (4..80)
  Island.create!(
    name: names[i+2],
    price: (areas[i].delete(',').to_i / 1000.0),
    user_id: u1.id,
    country: countries[i-1],
    description: "#{names[i+2]} is a beautiful island of #{areas[i].delete(',').to_i} km² in #{countries[i-1]}",
    address: names[i+2],
    aera: areas[i].delete(',').to_i,
    number_of_guests: (areas[i].delete(',').to_i / 8)
    )
  puts "#{names[i+2]} - #{countries[i-1]}"
end
for i in (130..325)
  Island.create!(
    name: names[i],
    price: (areas[i].delete(',').to_i / 1000.0),
    user_id: u1.id,
    country: countries[i],
    description: "#{names[i]} is a beautiful island of #{areas[i].delete(',').to_i} km² in #{countries[i]}",
    address: names[i],
    aera: areas[i].delete(',').to_i,
    number_of_guests: (areas[i].delete(',').to_i / 8)
    )
  puts "#{names[i]} - #{countries[i]}"
end

# Booking.destroy_all
# puts 'Creating Bookings'
# b1 = Booking.create!(
#   start_date: '04/04/2020',
#   end_date: '04/06/2020',
#   total_price: '2000.4',
#   island_id: i1.id,
#   user_id: u4.id
# )

# b2 = Booking.create!(
#   start_date: '04/04/2020',
#   end_date: '04/06/2020',
#   total_price: '3000.2',
#   island_id: i3.id,
#   user_id: u5.id
# )

# puts '2 bookings created !'

