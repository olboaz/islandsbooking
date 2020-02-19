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
  name: 'Okinawa',
  address: Faker::Address.street_address,
  price: '420',
  number_of_guests: '500',
  description: "Okinawa est une île japonaise située dans la mer de Chine orientale. Dans la ville de Naha, le château de Shuri est le palais reconstruit du royaume de Ryukyu. Constituant l'une des nombreuses forteresses restantes du royaume de Ryukyu sur Okinawa depuis la période Gusuku, il comporte la porte ornée Shureimon. Le musée de la préfecture d'Okinawa propose des expositions sur le patrimoine naturel et culturel de l'île, ainsi qu'une collection de Beaux-Arts. La rue Kokusaidori est bordée de boutiques et de restaurants.",
  user_id: u1.id
)

i2 = Island.create!(
  name: 'Guadeloupe',
  address: Faker::Address.street_address,
  price: '770',
  number_of_guests: '2500',
  description: "Territoire français d'outre-mer, la Guadeloupe est un groupe d'îles situé dans le sud de la mer des Caraïbes. Ressemblant à un papillon, ses deux plus grandes îles sont séparées par la Rivière Salée. L'île vallonnée de Grande-Terre possède de longues plages et des champs de canne à sucre. Sur l'île de Basse-Terre, le parc national de la Guadeloupe abrite les chutes du Carbet et le volcan de la Grande Soufrière. Parmi les îles de plus petite taille figurent Marie-Galante et la Désirade.",
  user_id: u2.id
)

i3 = Island.create!(
  name: 'Bora Bora',
  address: Faker::Address.street_address,
  price: '1520',
  number_of_guests: '1500',
  description: "Bora-Bora est une petite île du Pacifique sud, située au nord-ouest de Tahiti, en Polynésie française. Entourée d'îlots de sable, appelés \"motus\", et d'une eau turquoise protégée par un récif corallien, l'île est un haut lieu de la plongée sous-marine. C'est également une destination touristique prisée pour ses complexes de luxe, dont certains proposent des bungalows sur pilotis. Au centre de l'île s'élève le mont Otemanu, un volcan endormi culminant à 727 m.",
  user_id: u3.id
)

i4 = Island.create!(
  name: 'Kho Phi Phi',
  address: Faker::Address.street_address,
  price: '500',
  number_of_guests: '650',
  description: "Les îles Phi Phi sont un petit archipel de Thaïlande situé dans la mer d'Andaman au large de la province de Krabi, à laquelle il appartient. Très touristique, il comporte deux îles principales, Ko Phi Phi Don et Ko Phi Phi Le, les autres étant essentiellement des rochers.",
  user_id: u4.id
)

i5 = Island.create!(
  name: 'Seychelles',
  address: Faker::Address.street_address,
  price: '280',
  number_of_guests: '17500',
  description: "Les Seychelles sont un archipel de 115 îles situé dans l'océan Indien, au large de l'Afrique orientale. Elles abritent de nombreuses plages, récifs coralliens et réserves naturelles, ainsi que des animaux rares comme les tortues géantes des Seychelles. Mahé, point de départ pour visiter les autres îles, comprend Victoria, la capitale. On y trouve également les forêts tropicales du parc national du Morne Seychellois et des plages, notamment Beau Vallon et Anse Takamaka.",
  user_id: u5.id
)

i6 = Island.create!(
  name: 'Bali',
  address: Faker::Address.street_address,
  price: '15000',
  number_of_guests: '25000',
  description: "Bali est une île indonésienne célèbre pour ses montagnes volcaniques boisées, ses rizières, ses plages et ses récifs coralliens. L’île abrite des sites religieux, comme le temple d’Uluwatu construit au sommet d’une falaise à pic. Au sud se trouve la ville balnéaire de Kuta avec ses nombreux bars animés. Les villes de Seminyak, Sanur et Nusa Dua sont également des stations balnéaires très fréquentées. Bali est aussi connue pour ses retraites spirituelles, incluant notamment la pratique du yoga et de la méditation.",
  user_id: u1.id
)

i7 = Island.create!(
  name: 'Hawaii',
  address: Faker::Address.street_address,
  price: '7400',
  number_of_guests: '300',
  description: "Hawaii, un État américain, est un archipel volcanique isolé dans le Pacifique central. Ses îles sont réputées pour leurs paysages accidentés composés de falaises, de chutes d'eau, de forêt tropicale et de plages dont le sable arbore des teintes dorées, rouges, noires, voire vertes. Des 6 plus grandes îles, O'ahu accueille la plus grande ville, qui est également la capitale : Honolulu, où se situent la plage de Waikiki, en forme de croissant de lune, et les mémoriaux de la Seconde Guerre mondiale de Pearl Harbor.",
  user_id: u2.id
)

i8 = Island.create!(
  name: 'Lanzarote',
  address: Faker::Address.street_address,
  price: '640',
  number_of_guests: '25',
  description: "Lanzarote, île de l'archipel des Canaries située au large de la côte africaine et administrée par l'Espagne, est réputée pour son temps chaud toute l'année, ses plages et ses volcans. Le paysage rocheux du parc national de Timanfaya a été créé par des éruptions volcaniques dans les années 1730. La Cueva de los Verdes comprend des cavernes formées par une rivière de lave souterraine. Sur la côte est, la station balnéaire de Puerto del Carmen abrite des villas blanches à la chaux, des plages et des centres de plongée.",
  user_id: u3.id
)

i9 = Island.create!(
  name: 'Mauritius',
  address: Faker::Address.street_address,
  price: '475',
  number_of_guests: '50',
  description: "Maurice est un pays insulaire de l'océan Indien connu pour ses plages, ses lagons et ses récifs. Ses terres montagneuses comportent quant à elles le parc national des gorges de Rivière Noire, qui abrite des forêts tropicales, des cascades, des sentiers de randonnée et des animaux comme le renard volant. Port-Louis, la capitale, abrite l'hippodrome du Champ de Mars, la maison coloniale Eureka et le jardin botanique Sir Seewoosagur Ramgoolam, qui date du XVIIIe siècle.",
  user_id: u4.id
)

i10 = Island.create!(
  name: 'Manihi',
  address: Faker::Address.street_address,
  price: '3500',
  number_of_guests: '1500',
  description: "Manihi est un atoll situé dans l'archipel des Tuamotu en Polynésie française dans le sous-groupe des Îles du Roi Georges. Celui-ci est le chef-lieu de la commune de Manihi.",
  user_id: u5.id
)

i11 = Island.create!(
  name: 'Koh-tao',
  address: Faker::Address.street_address,
  price: '860',
  number_of_guests: '50',
  description: "Bora-Bora est une petite île du Pacifique sud, située au nord-ouest de Tahiti, en Polynésie française. Entourée d'îlots de sable, appelés \"motus\", et d'une eau turquoise protégée par un récif corallien, l'île est un haut lieu de la plongée sous-marine. C'est également une destination touristique prisée pour ses complexes de luxe, dont certains proposent des bungalows sur pilotis. Au centre de l'île s'élève le mont Otemanu, un volcan endormi culminant à 727 m.",
  user_id: u1.id
)

i12 = Island.create!(
  name: 'Galapagos',
  address: Faker::Address.street_address,
  price: '220',
  number_of_guests: '750',
  description: "Les îles Galápagos sont un archipel volcanique de l'océan Pacifique. Elles sont considérées comme l'une des destinations majeures au monde pour l'observation de la faune. Province de l'Équateur, l'archipel se trouve à près de 1 000 km au large de ses côtes. Son territoire isolé abrite une faune et une flore variées, dont nombre d'espèces sont uniques. Charles Darwin s'y est rendu en 1835, et ses observations sur les espèces des Galápagos lui ont par la suite inspiré sa théorie de l'évolution.",
  user_id: u2.id
)

puts '12 Island created !'

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

