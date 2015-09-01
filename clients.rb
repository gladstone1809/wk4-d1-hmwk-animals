class Clients

  attr_reader :client_name, :client_gender
  attr_accessor :number_of_pets, :client_age

  def initialize(client_name, client_gender, number_of_pets, client_age)
    @client_name = client_name
    @client_gender = client_gender
    @number_of_pets = number_of_pets
    @client_age = client_age
    @pets = []
  end

  def add_pet (pet)
     @pets << pet
  end
end