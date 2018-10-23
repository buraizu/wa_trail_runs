class WaTrailRuns::Run

  attr_accessor :title, :date, :description, :info_url, :reg_url

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

end
