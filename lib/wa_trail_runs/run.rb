class WaTrailRuns::Run

  attr_accessor :title, :date, :description, :info_url, :reg_url

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  # def runs
  #   WaTrailRuns::Scraper.new.scrape_evergreen
  #   WaTrailRuns::Scraper.new.scrape_northwest
  # end

  # def self.scrape_runs
  #   runs = []
  #   runs << self.scrape_northwest
  #   runs << self.scrape_evergreen
  #   runs
  # end
  #
  # def self.scrape_evergreen
  #   evergreen_top = Nokogiri::HTML(open("http://www.evergreentrailruns.com/"))
  #   evergreen_event = Nokogiri::HTML(open("http://www.evergreentrailruns.com/11-17-grand-ridge-trail-run"))
  #   run = self.new
  #   run.title = evergreen_top.css(".custom div")[1].children[1].to_s.split(" - ")[0].delete!("/<h4>/")
  #   run.description = evergreen_event.css(".item_content p")[0].text
  #   run.date = evergreen_top.css(".custom div")[1].children[1].to_s.split(" - ")[1].delete!("/<h4>/")
  #   run.info_url = evergreen_top.css(".custom div")[1].children[3].children[0].attribute("href").text.prepend("www.evergreentrailruns.com")
  #   run.reg_url = evergreen_event.css("a[title='Register on Webscorer']").attribute("href").text
  #   run.save
  # end
  #
  # def self.scrape_northwest
  #   northwest = Nokogiri::HTML(open("http://nwtrailruns.com/events/"))
  #   # links = northwest.css(".the-links")
  #   event = northwest.css(".event").first
  #   run = self.new
  #   run.title = event.css(".the-title").text.strip
  #   run.description = event.css(".the-content").children[1].text
  #   run.date = event.css(".the-date").text
  #   run.info_url = event.css(".the-title").css("a").attribute("href").text
  #   run.reg_url = event.css(".the-links").children[3].attribute("href").text
  #   run.save
  # end






end


# run.reg_url = event.css(".the-links").children[3].attribute("href").text




# run_1 = self.new
# run_1.title = "Grand Ridge"
# run_1.date = "November 17, 2018"
# run_1.url = "www.run_url.com"
#
# run_2 = self.new
# run_2.title = "Run 2"
# run_2.date = "December 17, 2018"
# run_2.url = "www.run_2_url.com"

# [run_1, run_2]
