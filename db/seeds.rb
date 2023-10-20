Beer.destroy_all
Brewery.destroy_all
List.destroy_all

puts 'Data Base created'
Brewery.create!(name: 'Heineken', address: 'Stadhouderskade 78, 1072 AE Amsterdam, Pays-Bas', bar: true)

Beer.create!(name: 'Heineken', country: 'Netherlands', style: 'Pils', abv: 4.5, brewery: Brewery.first, photo: 'heineken-original-bottle.png')
Beer.create!(name: 'Kronenbourg', country: 'France', style: 'Pils', abv: 4.3, brewery: Brewery.first)
Beer.create!(name: 'Estrella', country: 'Spain', style: 'Pils', abv: 5, brewery: Brewery.first)
Beer.create!(name: 'Mahou', country: 'Spain', style: 'IPA', abv: 5.1, brewery: Brewery.first)
Beer.create!(name: 'Mad Goose', country: 'England', style: 'Pale Ale', abv: 4.7, brewery: Brewery.first)
Beer.create!(name: '8.6', country: 'France', style: 'NEIPA', abv: 8.6, brewery: Brewery.first)
Beer.create!(name: 'Imperial', country: 'Costa Rica', style: 'Pils', abv: 4, brewery: Brewery.first)
Beer.create!(name: 'Baltika', country: 'Russia', style: 'Golden Ale', abv: 4.2, brewery: Brewery.first)
Beer.create!(name: 'San Miguel', country: 'Spain', style: 'Pils', abv: 4.9, brewery: Brewery.first)
Beer.create!(name: 'Moritz', country: 'Spain', style: 'Pils', abv: 5.4, brewery: Brewery.first)
Beer.create!(name: 'Tsingtao', country: 'China', style: 'Pils', abv: 4, brewery: Brewery.first)

List.create!(name: 'Beerkiff', user: User.first)
puts 'Creating Data Base'
