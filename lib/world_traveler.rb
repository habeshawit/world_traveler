require 'open-uri'
require 'nokogiri'
require 'pry'
require "world_traveler/version"
require "colorize"
require_relative "world_traveler/scraper"
require_relative "world_traveler/cli"
require_relative "world_traveler/continents"
require_relative "world_traveler/highlights"
require_relative "world_traveler/display"

module WorldTraveler
  class Error < StandardError; end
  # Your code goes here...
end