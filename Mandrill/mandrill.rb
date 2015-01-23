require 'mandrill'
require 'json'

mandrill = Mandrill::API.new 'YOUR_API_KEY'

yesterday_number = 0
todays_number = 0

clock = Time.new
day = clock.day

SCHEDULER.every '15m', :first_in => 0 do |job|
  if day != clock.day 
    #Checks to see if the day has rolled over
      yesterday_number= todays_number
  end
  result = mandrill.users.info
  todays_number = result["stats"]["today"]["sent"]
  
  send_event('mandrilltodaysent', { current: todays_number, last: yesterday_number })
end