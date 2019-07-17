# frozen_string_literal: true

# rspec spec/dog_spec.rb
require 'pry'

class Dog
  # code goes here

  attr_accessor :mood, :owner
  attr_reader :name

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = 'nervous'
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end

# binding.pry
