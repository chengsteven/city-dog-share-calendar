class AddUserToFullcalendarEngineEvents < ActiveRecord::Migration
  def change
    add_reference :fullcalendar_engine_events, :user, index: true, foreign_key: true
  end
end
