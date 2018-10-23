#CLI Controller
class WaTrailRuns::CLI


  def call
    puts "Welcome to WaTrailRuns, your go-to source for upcoming trail races in Washington State!"
    sleep 0.5
    WaTrailRuns::Scraper.new.scrape_evergreen
    WaTrailRuns::Scraper.new.scrape_northwest
    list_runs
    menu
    goodbye
  end      # End call

  def list_runs
    puts "Check out the upcoming runs!"
    WaTrailRuns::Run.all.each.with_index(1) do |run, index|
      puts "#{index}. #{run.title} - #{run.date}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the run you would like to learn more about, 'list' to show the list of runs, or 'exit'."
      input = gets.strip.downcase
      range = (1..WaTrailRuns::Run.all.size)
      if input.to_i > 0 && range.include?(input.to_i)
        chosen_run = WaTrailRuns::Run.all[input.to_i - 1]
        puts "#{chosen_run.title}:
        Description: #{chosen_run.description}
        More Info: #{chosen_run.info_url}
        Registration: #{chosen_run.reg_url}"
      elsif input == "list"
        list_runs
      elsif input != 'list' && input != 'exit'
        puts "Invalid input.  Type 'list' to see the runs or 'exit' to quit."
      end
    end
  end

  def goodbye
    puts "Happy trails!"
  end

end     #End class
