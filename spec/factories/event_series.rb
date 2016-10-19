# This will guess the EventSeries class
FactoryGirl.define do
  # default event series is a daily event that starts at current time
  factory :event_series do
    title "DogWalk Series"
    description  "Walking John Smiths dog"
    starttime { Time.now }
    endtime { 30.minutes.from_now }
    period "daily"
    frequency "5"
    
    factory :event_series_with_events do
      # posts_count is declared as a transient attribute and available in
      # attributes on the factory, as well as the callback via the evaluator
      transient do
        events_count 5 # default 5 events
      end

      # the after(:create) yields two values; the event instance itself and the
      # evaluator, which stores all values from the factory, including transient
      # attributes; `create_list`'s second argument is the number of records
      # to create and we make sure the event is associated properly to the post
      after(:create) do |event_series, evaluator|
        create_list(:event_in_series, evaluator.events_count, event_series: event_series)
      end
    end
  end
end
