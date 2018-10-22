class WaTrailRuns::Run

  attr_accessor :title, :date, :url

  def self.upcoming

  end

  def self.scrape_runs
    runs = []

    runs << self.scrape_evergreen

  end

  def self.scrape_evergreen
    race_hash = {}
    evergreen_top = Nokogiri::HTML(open("http://www.evergreentrailruns.com/"))
    evergreen_event = Nokogiri::HTML(open("http://www.evergreentrailruns.com/11-17-grand-ridge-trail-run"))
    description = evergreen_event.css(".item_content p")[0].text
    reg_link = evergreen_event.css("a[title='Register on Webscorer']").attribute("href").text
    title = evergreen_top.css(".custom div")[1].children[1].to_s.split(" - ")[0].delete!("/<h4>/")
    date = evergreen_top.css(".custom div")[1].children[1].to_s.split(" - ")[1].delete!("/<h4>/")
    info_link = evergreen_top.css(".custom div")[1].children[3].children[0].attribute("href").text.prepend("www.evergreentrailruns.com")
    race_hash[:description] = description
    race_hash[:title] = title
    race_hash[:date] = date
    race_hash[:info_link] = info_link
    race_hash[:reg_link] = reg_link
    race_hash
  end

  def self.scrape_northwest
    race_hash = {}
    northwest = Nokogiri::HTML(open("http://nwtrailruns.com/events/"))
    events = northwest.css(".event")
    title = events.css(".the-title").first.text.strip
    description = events.css(".the-content").first.children
    info_link = events.css(".the-title").first.css("a").attribute("href").text
    date = events.css(".the-date").first.text
    reg_link = events.css(".the-links").first.children[2].attribute("href").text
    binding.pry
  end
end





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
