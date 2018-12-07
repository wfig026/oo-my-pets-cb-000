class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def self.all
    return @@all
  end

  def self.count
    return @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_pet = Cat.new(cat_name)
    @pets[:cats] << new_pet
  end

  def buy_dog(dog_name)
    new_pet = Dog.new(dog_name)
    @pets[:dogs] << new_pet
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each{|type, pets| pets.each{|pet| pet.mood = "nervous"}}
    @pets = []
  end

  def list_pets
    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
