require './lib/firstbank'

# describe Firstbank do
#  let(:firstbank) {Firstbank.new}
#  describe '#initialize' do
#    it 'initialize all instance variables' do
#      expect(firstbank.url).to be_a(String)
#      expect(firstbank.firstbank_locations).to eql([])
#    end
#  end
#
#  describe '#scrape' do
#    it 'should update the location address' do
#      firstbank.scrape
#      expect(firstbank.locations.length).to be > 0
#    end
#  end
# end

describe Firstbank do
  let(:firstbank) { Firstbank.new }
  describe '#initialize' do
    it 'initialize url to string value' do
      expect(firstbank.url).to be_a(String)
    end
    it 'initialize firstbank_location to an empty array' do
      expect(firstbank.firstbank_locations).to eql([])
    end
    # it 'initialize parsed_page to null' do
    #  expect(firstbank.parsed_page.nil?).to eql(true)
    # end
  end

  describe '#scrape' do
    let(:csv) { CSV.open('firstbank1.csv', 'a+') }
    let(:update_csv) { csv << %w[area] }

    it 'should update the location array' do
      firstbank.scrape(update_csv)
      expect(firstbank.firstbank_locations.length).to be > 0
    end
    it 'should assign a value to parse_page' do
      firstbank.scrape(update_csv)
      expect(firstbank.parsed_page.nil?).to eql(false)
    end
  end
end
