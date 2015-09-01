class Pets

  attr_reader :pet_name, :breed, :pet_gender
  attr_accessor :pet_age, :favorite_toy

  def initialize(pet_name, breed, pet_gender, pet_age, favorite_toy)
    @pet_name = pet_name
    @breed = breed
    @pet_gender = pet_gender
    @pet_age = pet_age
    @favorite_toy = favorite_toy
  end

end