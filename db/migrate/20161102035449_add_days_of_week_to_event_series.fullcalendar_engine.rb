# This migration comes from fullcalendar_engine (originally 20161031235136)
class AddDaysOfWeekToEventSeries < ActiveRecord::Migration
  def change
    add_column :fullcalendar_engine_event_series, :sunday, :boolean, :default => false
    add_column :fullcalendar_engine_event_series, :monday, :boolean, :default => false
    add_column :fullcalendar_engine_event_series, :tuesday, :boolean, :default => false
    add_column :fullcalendar_engine_event_series, :wednesday, :boolean, :default => false
    add_column :fullcalendar_engine_event_series, :thursday, :boolean, :default => false
    add_column :fullcalendar_engine_event_series, :friday, :boolean, :default => false
    add_column :fullcalendar_engine_event_series, :saturday, :boolean, :default => false
  end
end
