require './lib/firstbank'

describe FirstBank do
  let(:firstbank) { FirstBank.new }
  describe '#initialize' do
    it 'initialize url to string value' do
      expect(firstbank.url).to be_a(String)
    end
    it 'initialize firstbank_location to an empty array' do
      expect(firstbank.firstbank_locations).to eql([])
    end
  end

  describe '#scrape' do
    let(:csv) { CSV.open('firstbank1.csv', 'a+') }
    let(:update_csv) { csv << %w[area] }

    it 'should update the location array' do
      firstbank.scrape(update_csv)
      expect(firstbank.firstbank_locations.length).to be > 0
    end
  end
end
