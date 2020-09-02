require './lib/tastee'

describe Tastee do
    let(:tastee) { Tastee.new }
  describe '#initialize' do
    it 'initialize url to string value' do
      expect(tastee.url).to be_a(String)
    end
    it 'initialize tastee_location to an empty array' do
      expect(tastee.tastee_locations).to eql([])
    end
    it 'initialize parsed_page to null' do
      expect(tastee.parsed_page.nil?).to eql(true)
    end
  end
end