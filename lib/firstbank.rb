require 'nokogiri'
require 'httparty'

class Firstbank
  attr_reader :firstbank_locations, :url

  def initialize
    @url = 'https://www.firstbanknigeria.com/list-of-open-branches-nationwide/'
    @firstbank_locations = []
  end

  def scrape(csv)
    parsed_page = parse_url(@url)
    parsed_page.css('div.wpb_wrapper').css('tr > td').map do |address|
      firstbank = []
      location_address = address.text
      @firstbank_locations.push(location_address)
      firstbank.push(location_address)
      csv << firstbank
    
    end
  end

  private

  def parse_url(url)
    unparsed_page = HTTParty.get(url)
    Nokogiri::HTML(unparsed_page)
  end  
end