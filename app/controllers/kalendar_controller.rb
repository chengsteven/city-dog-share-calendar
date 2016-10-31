class KalendarController < ApplicationController
  def index
    if User.exists?(params[:id])
      @user = User.find(session[:user_id])
    else
      @user = nil
    end
  end
end
