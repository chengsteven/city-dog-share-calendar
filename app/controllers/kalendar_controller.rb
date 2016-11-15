class KalendarController < ApplicationController
  def index
    @user = User.find_by_uid(session[:user_id])
    if @user == nil
      flash[:notice] = "You must be signed in to view your calendar."
      redirect_to root_path()
    end
  end
end
