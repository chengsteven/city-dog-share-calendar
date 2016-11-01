class KalendarController < ApplicationController
  def index
    if session[:user_id].nil?
      puts "*********************************************************************************************"
      
      redirect_to '/auth/facebook'
    end
    @user = User.find_by_uid(session[:user_id])
  end
end
