Given(/^the following appointments exist:$/) do |events_table|
  # table is a Cucumber::MultilineArgument::DataTable
  events_table.hashes.each do |event|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    event_params = {
      :title => event[:title],
      :starttime => Time.now,
      :endtime => Time.now + 1.hours,
      :description => event[:description],
      :rate => event[:rate],
      :dogs => event[:dogs],
      :user_id => event[:user_id]
    }
    
    appointment = FullcalendarEngine::Event.create!(event_params)
  end
 end
