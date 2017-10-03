require 'HTTParty'

class Scraper
  JOBONLINE_URL = 'http://jobonline.thecareersgroup.co.uk/careersgroup/student/Vacancies.aspx?&st='

  def initialize
    @data = ''
  end

  def check_data
    @data
  end

  def retrieve_page
    @data = HTTParty.get(JOBONLINE_URL)
  end
end
