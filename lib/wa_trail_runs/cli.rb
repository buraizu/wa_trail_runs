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
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the run you would like to learn more about, 'list' to show the list of runs, or 'exit'."
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on race #1"
      when "2"
        puts "More info on race #2"
      when "3"
        puts "More info on race #3"
      when "list"
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
