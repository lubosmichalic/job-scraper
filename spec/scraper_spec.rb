require 'Scraper'

describe Scraper do
  subject(:scraper) { described_class.new }

  it 'is instantiated with an empty string' do
    expect(scraper.check_data).to eq ''
  end

  it 'is able to retrieve document data from JobOnline' do
    scraper.retrieve_page
    expect(scraper.retrieve_page).to include('Vacancies / Search results')
  end
end
