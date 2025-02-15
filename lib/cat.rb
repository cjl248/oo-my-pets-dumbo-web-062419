# frozen_string_literal: true

# rspec spec/cat_spec.rb
require 'pry'

class Cat
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
end

# binding.pry
