# This will guess the Event class
FactoryGirl.define do
  # default event is 1 day from now with duration of an hour
  factory :event do
    title "DogWalk repeat"
    description  "Walking Ms Pott's Dog"
    starttime { 1.days.from_now }
    endtime { 1.days.from_now + 1.hour }
    event_series
  end

  # event factory without associated posts
  factory :event_in_series do
    title "DogWalk"
    description  "Walking Ms Pott's Dog"
    starttime { 1.days.from_now }
    endtime { 1.days.from_now + 1.hour }
  end
end