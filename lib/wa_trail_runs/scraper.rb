require 'nokogiri'
require 'open-uri'
require 'pry'


class Scraper

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
    northwest = Nokogiri::HTML(open("http://nwtrailruns.com/events/"))
    run_array = []
    events = northwest.css(".event")
    events.each do |e|
      race_hash = {}
      title = e.css(".the-title").text.strip
      description = e.css(".the-content").children[1].text
      info_link = e.css(".the-title").css("a").attribute("href").text
      date = e.css(".the-date").text
      reg_link = e.css(".the-links").children[3].attribute("href").text
      race_hash[:title] = title
      race_hash[:description] = description
      race_hash[:date] = date
      race_hash[:info_link] = info_link
      race_hash[:reg_link] = reg_link
      run_array << race_hash
    end
    run_array
  end






end
