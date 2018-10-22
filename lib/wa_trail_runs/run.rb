class WaTrailRuns::Run

  attr_accessor :title, :date, :url

  def self.upcoming

  end

  def self.scrape_runs
    runs = []

    runs << self.scrape_evergreen
    runs << self.scrape_northwest
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
