require 'faker'

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

Island.destroy_all
puts 'Creating Island'
i1 = Island.create!(
  name: 'Coppa Loca',
  address: Faker::Address.street_address,
  price: '420.2',
  number_of_guests: '500',
  user_id: u1.id
)

i2 = Island.create!(
  name: 'Zoppa Loca',
  address: Faker::Address.street_address,
  price: '770.0',
  number_of_guests: '2500',
  user_id: u2.id
)

i3 = Island.create!(
  name: 'Rotta Loca',
  address: Faker::Address.street_address,
  price: '1520.6',
  number_of_guests: '1500',
  user_id: u3.id
)

puts '3 Island created !'

Booking.destroy_all
puts 'Creating Bookings'
b1 = Booking.create!(
  start_date: '04/04/2020',
  end_date: '04/06/2020',
  total_price: '2000.4',
  island_id: i1.id,
  user_id: u4.id
)

b2 = Booking.create!(
  start_date: '04/04/2020',
  end_date: '04/06/2020',
  total_price: '3000.2',
  island_id: i3.id,
  user_id: u5.id
)

puts '2 bookings created !'

