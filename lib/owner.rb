# frozen_string_literal: true

# rspec spec/owner_spec.rb
require 'pry'

class Owner
  # code goes here

  attr_reader :species, :name

  @@all = []

  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def cats
    Cat.all.select { |cat| cat.owner == self }
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def feed_cats
    cats.map { |cat| cat.mood = 'happy' }
  end

  def dogs
    Dog.all.select { |dog| dog.owner == self }
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    dogs.map { |dog| dog.mood = 'happy' }
  end

  def sell_pets
    cats.each do |cat|
      cat.owner = nil
      cat.mood = 'nervous'
    end
    dogs.each do |dog|
      dog.mood = 'nervous'
      dog.owner = nil
    end
  end

  def list_pets
    "I have #{dogs.size} dog(s), and #{cats.size} cat(s)."
  end
end

# binding.pry
