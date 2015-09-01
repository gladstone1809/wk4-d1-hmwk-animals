class Shelter

  attr_reader :name
  attr_accessor :clients

  def initialize(name)
    @name = name
    @clients = []
  end

  def add_client (client_name, client_gender, number_of_pets, client_age)
    clients << Clients.new(client_name, client_gender, number_of_pets, client_age)
  end

end