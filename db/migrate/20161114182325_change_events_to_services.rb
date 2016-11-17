class ChangeEventsToServices < ActiveRecord::Migration
    # Modifying Events to Services. "Services" will still be labeled as
    # "Events" in the purposes of this app, only the fields will change.
  def change
    add_column :fullcalendar_engine_event_series, :rate, :decimal
    add_column :fullcalendar_engine_event_series, :holiday_surcharge, :boolean, :default => false
    add_column :fullcalendar_engine_event_series, :allow_discount, :boolean, :default => false
    add_column :fullcalendar_engine_event_series, :taxable, :boolean, :default => false

    add_column :fullcalendar_engine_events, :dogs, :string
  end
end
