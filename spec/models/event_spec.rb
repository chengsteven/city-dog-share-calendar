require 'rails_helper'
require 'spec_helper'

RSpec.describe Event, type: :model do
  @event = FactoryGirl.create(:event)
  @event_series = FactoryGirl.create(:event_series)
  
  describe "validate_timings" do
    context "when start time is after end time" do
      let(:subject) { Event.create(:title => "x", :description => "blah", :starttime => 1.day.from_now, :endtime => Time.now) }
      it "raises an error" do
        expect{ subject }.to raise_error
      end
    end
    
    context "when start and end time is a valid time range" do
      it "does nothing" do
        
      end
    end
  end
  
  describe "update_events" do
    
  end
  
  describe "make_date_time" do
  end
    # @calendar = Calendar.create!( name: 'Sample Calendar', color: '#ffff00')
    # xit "happens one time" do
    # event =  Event.create!( name: 'one time event',
    #     description: '',
    #     is_all_day: false,
    #     from_date: 'Mon, 17 Jun 2013',
    #     from_time: '2000-01-01 09:00:00 UTC',
    #     to_date: 'Mon, 17 Jun 2013',
    #     to_time: '2000-01-01 17:00:00 UTC',
    #     hourly_rate: 10.0,
    #     repeats: 'never',
    #     repeats_every_n_days: nil,
    #     repeats_every_n_weeks: nil,
    #     repeats_every_n_months: nil,
    #     repeats_monthly: 'each',
    #     repeats_every_n_years: nil,
    #     repeats_yearly_on: false,
    #     repeat_ends: 'never',
    #     repeat_ends_on: 'Mon, 17 Jun 2013',
    #     time_zone: 'Eastern Time (US & Canada)',
    #     calendar_id: @calendar.id)
    # expect(event.schedule.first(5)).to eq(['Mon, 17 Jun 2013 09:00:00 EDT -04:00'])
    # expect(event.schedule.first(5)).not_to eq(['Sun, 16 Jun 2013 09:00:00 EDT -04:00'])
    # expect(event.schedule.first(5)).not_to eq(['Tue, 18 Jun 2013 00:00:00 EDT -04:00'])
    # end
end
