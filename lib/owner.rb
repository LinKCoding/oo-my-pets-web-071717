class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a human."
  end

  def buy_fish(fish)
    fishy = Fish.new(fish)
    self.pets[:fishes] << fishy
  end

  def buy_cat(cat)
    kitty = Cat.new(cat)
    self.pets[:cats] << kitty
  end

  def buy_dog(dog)
    doggo = Dog.new(dog)
    self.pets[:dogs] << doggo
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fishy|
      fishy.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |type_of_pet, all_pets|
      all_pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
