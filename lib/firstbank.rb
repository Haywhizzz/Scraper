require 'nokogiri'
require 'httparty'

class Firstbank
  attr_reader :firstbank_locations, :url

  def initialize
    @url = 'https://www.firstbanknigeria.com/list-of-open-branches-nationwide/'
    @firstbank_locations = []
  end
    
end