class WaTrailRuns::Scraper





  def scrape_evergreen
    @evergreen_top = Nokogiri::HTML(open("http://www.evergreentrailruns.com/"))
    @evergreen_event = Nokogiri::HTML(open("http://www.evergreentrailruns.com/11-17-grand-ridge-trail-run"))
    run = WaTrailRuns::Run.new
    run.title = @evergreen_top.css(".custom div")[1].children[1].to_s.split(" - ")[0].delete!("/<h4>/")
    run.description = @evergreen_event.css(".item_content p")[0].text
    run.date = @evergreen_top.css(".custom div")[1].children[1].to_s.split(" - ")[1].delete!("/<h4>/")
    run.info_url = @evergreen_top.css(".custom div")[1].children[3].children[0].attribute("href").text.prepend("www.evergreentrailruns.com")
    run.reg_url = @evergreen_event.css("a[title='Register on Webscorer']").attribute("href").text
    run.save

  end

  def scrape_northwest
    @northwest = Nokogiri::HTML(open("http://nwtrailruns.com/events/"))
    run_array = []
    events = @northwest.css(".event")

    counter = 0
      events.each do |event|

        if counter < 4


      run = WaTrailRuns::Run.new
      # reg_link = event.search("a[target='_blank']")
      # if reg_link != nil

        run.title = event.css(".the-title").text.strip
        run.description = event.css(".the-content").children[1].text
        run.date = event.css(".the-date").text
        run.info_url = event.css(".the-title").css("a").attribute("href").text

        # begin
        run.reg_url = event.search("a[target='_blank']").attribute("href").text
      # rescue NoMethodError
      #   binding.pry
      # end
      # end
      run.save
      counter = counter + 1

    end

    end






  end       #End scrape_northwest




end     # End Scraper
