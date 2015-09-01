require_relative './shelter'
require_relative './clients'
require_relative './animals'

fluffyville = Shelter.new('Fluffyville Boutique Vertebrate and Invertebrate Rest Center')

def menu
  puts `clear`
  puts '*' * 52
  puts "* Welcome to Fluffyville Boutique Vertebrate and Invertebrate Rest Center *".center 50
  puts '*' * 52
  puts '1: Add a client'
  puts '2: List clients'
  puts '3: Put a pet up for adoption'
  puts '4: List animals in Fluffyville'
  puts 'q: Quit'
  print '-->'
  gets.chomp
end

response = menu

def list_clients (shelter)
  shelter.clients.each_with_index { | client, index | puts "#{index}: #{client.client_name}"}
end

def list_pets (client)
  client.pets.each_with_index { | pet, index | puts "#{index}: #{pet.pet_name}"}
end

def add_pet(pet)
  clients.pet.each_with_index { | pet, index | puts "#{index}: #{pet_name}"}
end

while response.downcase != 'q'
  case response
  when '1' # Add a client
    puts 'What is the name of this client?'
    client_name = gets.chomp

    puts 'How many pets do they have?'
    number_of_pets = gets.chomp.to_i

    puts 'How old is the client?'
    client_age = gets.chomp.to_i

    puts 'What is the gender of the client?'
    client_gender = gets.chomp

    fluffyville.add_client(client_name, client_gender, number_of_pets, client_age)

    puts "#{client_name}, who is of the #{client_gender} persuasion and #{client_age} years of age, has wisely chosen Fluffyville to look after his #{number_of_pets} pets."

    gets
  
  when '2' # List clients
    puts 'Our select clientele includes luminaries such as...'
    list_clients(fluffyville)
    gets

  when '3' # Put an animal up for adoption

    puts 'What is the little ragamuffin\'s name?'
    pet_name = gets.chomp

    puts "What sort of critter is it?"
    breed = gets.chomp

    puts "Are they male or female?"
    pet_gender = gets.chomp

    puts "How old are they?"
    pet_age = gets.to_i

    puts "What is their favourite toy?"
    favorite_toy = gets.chomp

    pet = Pets.new(pet_name, breed, pet_gender, pet_age, favorite_toy)

    puts "Who is putting this ball of loveliness up for adoption?"
    list_clients(fluffyville)

    client_number = gets.to_i
    client = fluffyville.clients[client_number]

    client.add_pet(pet)
    puts "#{pet.pet_name} the #{pet.breed} has been put up for adoption by #{client_name}."
    gets

  when '4'
    puts "The animals currently enjoying our hospitality are:"
    i = 0
    while i < fluffyville.clients.length
      client = fluffyville.clients[i]
      puts client.pets[0]
      i += 1
      gets
    end

  end
  # when '4' # List passengers on a flight
  #   puts "What flight do you want to list the passengers for?"
  #   list_flights(lhr)

  #   # Choose a flight
  #   flight_number = gets.to_i
  #   flight = lhr.flights[flight_number]

  #   # Loop through the passenger array
  #   puts 'The passengers for this flight are: '
  #   list_passengers(flight)
  #   gets
  # end

  # response = menu

  response = menu

end