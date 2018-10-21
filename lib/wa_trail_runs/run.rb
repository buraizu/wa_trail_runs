class WaTrailRuns::Run

  attr_accessor :title, :date, :url

  def self.upcoming
    puts <<-EOF
    Grand Ridge Trail Runs
    5m | Half-Marathon | Marathon | 50k
    November 17, 2018 in Issaquah, Washington
    Join us for a trail run at Grand Ridge Regional Park, just across I-90 from Tiger Mountain. A great trail system awaits.

    Grand Ridge is our Series Awards finale. We'll hand out Series awards, so stay for the festivities!

    The aid stations are fully stocked with water, Nuun, Clif product, PBJ sandwiches, fruit, cookies, crackers and pretzels. As always, at the finish there will be a full variety of post race foods awaiting you.

    This event is sanctioned by USA Track & Field.

    Registration
    Online pre-registration closes November 15 at 11:59pm.
    EOF

    run_1 = Run.new
    run_1.title = "Grand Ridge"
    run_1.date = "November 17, 2018"
    run_1.url = "www.run_url.com"

    run_2 = Run.new
    run_2.title = "Run 2"
    run_2.date = "December 17, 2018"
    run_2.url = "www.run_url.com"

    return [run_1, run_2]
  end

end
