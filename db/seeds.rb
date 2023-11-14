require "open-uri"

Beer.destroy_all
Brewery.destroy_all
List.destroy_all

puts 'Creating Data Base'
heineken_brewery = Brewery.create!(name: 'Heineken', address: 'Stadhouderskade 78, 1072 AE Amsterdam, Pays-Bas', bar: true)
heineken_photo = URI.open('https://res.cloudinary.com/dzvicjn3i/image/upload/v1699899277/bdl9fxnztewknfkp59ru.png')
heineken = Beer.create!(name: 'Heineken', country: 'Netherlands', style: 'Pils', abv: 4.5, brewery: heineken_brewery)
heineken.photo.attach(io: heineken_photo, filename: 'heineken.png', content_type: 'image/png')
puts 'Heineken created'
kronenbourg_brewery = Brewery.create!(name: 'Kronenbourg', address: "route d'Oberhausbergen, 67200 Strasbourg, France", bar: true)
kronenbourg_photo = URI.open('https://res.cloudinary.com/dzvicjn3i/image/upload/v1699899772/csa5b6wequkjbkvfwxbr.png')
kronenbourg = Beer.create!(name: 'Kronenbourg', country: 'France', style: 'Pils', abv: 4.3, brewery: kronenbourg_brewery)
kronenbourg.photo.attach(io: kronenbourg_photo, filename: 'kronenbourg.png', content_type: 'image/png')
puts 'Kronenbourg created'
guinness_brewery = Brewery.create!(name: 'Guinness', address: 'St. James Gate, Dublin 8, D08 VF8H, Irlande', bar: true)
guinness_photo = URI.open('https://res.cloudinary.com/dzvicjn3i/image/upload/v1699905117/jrk3cnuogsnddbctwemx.png')
guinness = Beer.create!(name: 'Guinness', country: 'Ireland', style: 'Stout', abv: 4.2, brewery: guinness_brewery)
guinness.photo.attach(io: guinness_photo, filename: 'guinness.png', content_type: 'image/png')
puts 'Guinness created'
estrella_brewery = Brewery.create!(name: 'Estrella', address: 'Carrer de Rosselló, 515, 08025 Barcelona, Espagne', bar: true)
estrella_photo = URI.open('https://res.cloudinary.com/dzvicjn3i/image/upload/v1698245408/nyt0gunqmjnbz5vvwbg2.png')
estrella = Beer.create!(name: 'Estrella Damm', country: 'Spain', style: 'Pils', abv: 5.4, brewery: estrella_brewery)
estrella.photo.attach(io: estrella_photo, filename: 'estrella.png', content_type: 'image/png')
puts 'Estrella created'
superbock_brewery = Brewery.create!(name: 'Super Bock', address: 'R. de Belém 84, 1300-085 Lisboa, Portugal', bar: true)
superbock_photo = URI.open('https://res.cloudinary.com/dzvicjn3i/image/upload/v1699900169/sdayvijiakruefih3vxj.png')
superbock = Beer.create!(name: 'Super Bock', country: 'Portugal', style: 'Pils', abv: 5.2, brewery: superbock_brewery)
superbock.photo.attach(io: superbock_photo, filename: 'superbock.png', content_type: 'image/png')
puts 'Super Bock created'
carlsberg_brewery = Brewery.create!(name: 'Carlsberg', address: '100 Ny Carlsberg Vej, 1799 København, Danemark', bar: true)
carlsberg_photo = URI.open('https://res.cloudinary.com/dzvicjn3i/image/upload/v1699905203/numwu8gt20sspah5chiq.png')
carlsberg = Beer.create!(name: 'Carlsberg', country: 'Denmark', style: 'Pils', abv: 5, brewery: carlsberg_brewery)
carlsberg.photo.attach(io: carlsberg_photo, filename: 'carlsberg.png', content_type: 'image/png')
puts 'Carlsberg created'
corona_brewery = Brewery.create!(name: 'Corona', address: 'Av. Paseo de la Reforma 250, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX, Mexique', bar: true)
corona_photo = URI.open('https://res.cloudinary.com/dzvicjn3i/image/upload/v1699903522/xm9yo4wzq14hws3npntj.webp')
corona = Beer.create!(name: 'Corona', country: 'Mexico', style: 'Pils', abv: 4.5, brewery: corona_brewery)
corona.photo.attach(io: corona_photo, filename: 'corona.png', content_type: 'image/webp')
puts 'Corona created'
budweiser_brewery = Brewery.create!(name: 'Budweiser', address: 'One Busch Place, St. Louis, MO 63118, États-Unis', bar: true)
budweiser_photo = URI.open('https://res.cloudinary.com/dzvicjn3i/image/upload/v1699905380/hyqevd0fvyqptfjxqvau.png')
budweiser = Beer.create!(name: 'Budweiser', country: 'United States', style: 'Pils', abv: 5, brewery: budweiser_brewery)
budweiser.photo.attach(io: budweiser_photo, filename: 'budweiser.png', content_type: 'image/png')
puts 'Budweiser created'
asahi_brewery = Brewery.create!(name: 'Asahi', address: '1-23-1 Azumabashi, Sumida City, Tokyo 130-8602, Japon', bar: true)
asahi_photo = URI.open('https://res.cloudinary.com/dzvicjn3i/image/upload/v1699903795/nduzgaxaut2rhzqbmweb.png')
asahi = Beer.create!(name: 'Asahi', country: 'Japan', style: 'Pils', abv: 5, brewery: asahi_brewery)
asahi.photo.attach(io: asahi_photo, filename: 'asahi.png', content_type: 'image/png')
puts 'Asahi created'
tiger_brewery = Brewery.create!(name: 'Tiger', address: '459 Jln Ahmad Ibrahim, Singapore 639934', bar: true)
tiger_photo = URI.open('https://res.cloudinary.com/dzvicjn3i/image/upload/v1699904023/usbfuazsuaawwmxas2lp.png')
tiger = Beer.create!(name: 'Tiger', country: 'Singapore', style: 'Pils', abv: 5, brewery: tiger_brewery)
tiger.photo.attach(io: tiger_photo, filename: 'tiger.png', content_type: 'image/png')
puts 'Tiger created'
gallia_brewery = Brewery.create!(name: 'Gallia', address: '35 Rue Méhul, 93500 Pantin, France', bar: true)
gallia_photo = URI.open('https://res.cloudinary.com/dzvicjn3i/image/upload/v1699904367/kubkrt82kclvuzrghtsc.png')
gallia = Beer.create!(name: 'Gallia', country: 'France', style: 'Pils', abv: 5, brewery: gallia_brewery)
gallia.photo.attach(io: gallia_photo, filename: 'gallia.png', content_type: 'image/png')
puts 'Gallia created'
moretti_brewery = Brewery.create!(name: 'Moretti', address: 'Via Luigi Moretti, 1, 60015 Falconara Marittima AN, Italie', bar: true)
moretti_photo = URI.open('https://res.cloudinary.com/dzvicjn3i/image/upload/v1699905653/p9ydtlhe2s5guibafu4q.png')
moretti = Beer.create!(name: 'Moretti', country: 'Italy', style: 'Pils', abv: 4.6, brewery: moretti_brewery)
moretti.photo.attach(io: moretti_photo, filename: 'moretti.png', content_type: 'image/png')

List.create!(name: 'My Beers', user: User.first)
puts 'Data Base created'
