require 'Scraper'

describe Scraper do
  subject(:scraper) { described_class.new }

  it 'is instantiated with an empty string' do
    expect(scraper.check_data).to eq ''
  end
end
