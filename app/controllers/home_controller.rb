class HomeController < ApplicationController
  def index
    @user = User.find_by_uid(session[:user_id])
    if @user != nil
      redirect_to kalendar_path()
    end
  end
end
