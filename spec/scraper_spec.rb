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

  describe '#retrieve_page' do
    it 'is is able to retrieve document data with a search term specified' do
      scraper.retrieve_page('marketing')
      expect(scraper.retrieve_page).to include('marketing').or include('Marketing')
    end
    
    it '' do
      scraper.retrieve_page('engineer')
      expect(scraper.retrieve_page).to include('engineer').or include('Engineer')
    end
  end
end
