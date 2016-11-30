class SummaryController < ApplicationController
  before_filter :current_user
  
  def view
    now = Time.now
    start_time = Time.new(now.year, now.month, 1, 0, 0).to_formatted_s(:db)
    last_day_of_month = DateTime.new(now.year, now.month).end_of_month.day
    end_time = Time.new(now.year, now.month, last_day_of_month, 23, 59).to_formatted_s(:db)
    events = FullcalendarEngine::Event.where(
                  '(starttime >= :start_time and endtime <= :end_time) or
                  (starttime >= :start_time and endtime > :end_time and starttime <= :end_time) or
                  (starttime <= :start_time and endtime >= :start_time and endtime <= :end_time) or
                  (starttime <= :start_time and endtime > :end_time)',
                  start_time: start_time, end_time: end_time)
    events = events.where(user_id: current_user.id)
    
    dog_name_to_total_rate = {}
    events.each do |event|
      dog_list = JSON.parse(event.dogs)
      dog_list.each do |dog_hash|
        name = dog_hash["dog_name"].downcase.capitalize
        dog_name_to_total_rate[name] = 0 unless dog_name_to_total_rate.key?(name)
        dog_name_to_total_rate[name] += event.rate
      end
    end
    
    @dogs = []
    @total = 0
    dog_name_to_total_rate.keys.each do |name|
      @dogs << { :name => name, :price => dog_name_to_total_rate[name] }
      @total += dog_name_to_total_rate[name]
    end
  end
end
