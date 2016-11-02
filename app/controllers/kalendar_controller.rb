class KalendarController < ApplicationController
  def index
    @user = User.find_by_uid(session[:user_id])
  end
end
