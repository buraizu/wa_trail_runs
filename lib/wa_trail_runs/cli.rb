#CLI Controller
class WaTrailRuns::CLI


  def call
    list_runs
    menu
    goodbye
  end      # End call

  def list_runs
    puts "Check out the upcoming runs"

    @runs = WaTrailRuns::Run.upcoming
    @runs.each.with_index(1) do |run, index|
      puts "#{index}. #{run.title} - #{run.date} - #{run.info_url}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the run you would like to learn more about, 'list' to show the list of runs, or 'exit'."
      input = gets.strip.downcase
      if input.to_i > 0
        chosen_run = @runs[input.to_i - 1]
        puts "#{chosen_run.title} - #{chosen_run.description} - #{chosen_run.reg_url}"
      elsif input == "list"
        list_runs
      else
        puts "Invalid input.  Type 'list' to see the runs or 'exit' to quit."
      end
    end
  end

  def goodbye
    puts "Happy trails!"
  end

end     #End class
