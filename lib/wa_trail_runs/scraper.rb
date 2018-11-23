class WaTrailRuns::Scraper

  def scrape_northwest

    @northwest = Nokogiri::HTML(open("http://nwtrailruns.com/events/"))
    events = @northwest.css(".event")
    events.each do |event|
      run = WaTrailRuns::Run.new
      run.title = event.css(".the-title").text.strip
      run.description = event.css(".the-content").children[1].text
      run.date = event.css(".the-date").text
      run.info_url = event.css(".the-title").css("a").attribute("href").text
      if event.search("a[target='_blank']").size > 0
        run.reg_url = event.search("a[target='_blank']").attribute("href").text
        run.save
      else
        return
      end
    end

  end
end
