class WaTrailRuns::Scraper

  # Scraping this site no longer works as they have wrapped up for the year.  They will start to feature events next year at which time data can be scraped from their site.

  # def scrape_evergreen
  #   @evergreen_top = Nokogiri::HTML(open("http://www.evergreentrailruns.com/"))
  #   @evergreen_event = Nokogiri::HTML(open("http://www.evergreentrailruns.com/11-17-grand-ridge-trail-run"))
  #   run = WaTrailRuns::Run.new
  #   run.title = @evergreen_top.css(".custom div")[1].children[1].to_s.split(" - ")[0].delete!("/<h4>/")
  #   run.description = @evergreen_event.css(".item_content p")[0].text
  #   run.date = @evergreen_top.css(".custom div")[1].children[1].to_s.split(" - ")[1].delete!("/<h4>/")
  #   run.info_url = @evergreen_top.css(".custom div")[1].children[3].children[0].attribute("href").text.prepend("www.evergreentrailruns.com")
  #   run.reg_url = @evergreen_event.css("a[title='Register on Webscorer']").attribute("href").text
  #   run.save
  # end

  def scrape_northwest
    @northwest = Nokogiri::HTML(open("http://nwtrailruns.com/events/"))
    events = @northwest.css(".event")
    counter = 0
    events.each do |event|
      if counter < 5
        run = WaTrailRuns::Run.new
        run.title = event.css(".the-title").text.strip
        run.description = event.css(".the-content").children[1].text
        run.date = event.css(".the-date").text
        run.info_url = event.css(".the-title").css("a").attribute("href").text
        run.reg_url = event.search("a[target='_blank']").attribute("href").text
        run.save
        counter = counter + 1
      end
    end
  end

end
