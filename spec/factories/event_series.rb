# This will guess the EventSeries class
FactoryGirl.define do
  # default event series is a daily event that starts at current time
  factory :event do
    title "DogWalk Series"
    description  "Walking John Smiths dog"
    starttime Time.now
    endtime 30.minutes.from_now
    period "daily"
    frequency "4"
  end
end
