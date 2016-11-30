class ChangeEventsToServices < ActiveRecord::Migration
    # Modifying Events to Services. "Services" will still be labeled as
    # "Events" in the purposes of this app, only the fields will change.
  def change
    add_column :fullcalendar_engine_events, :rate, :decimal, :default => 0.0
    add_column :fullcalendar_engine_events, :holiday_surcharge, :boolean, :default => false
    add_column :fullcalendar_engine_events, :allow_discount, :boolean, :default => false
    add_column :fullcalendar_engine_events, :taxable, :boolean, :default => false
    add_column :fullcalendar_engine_events, :dogs, :string
  end
end
