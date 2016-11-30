class HomeController < ApplicationController
  def index
    if session.key? :user_id
        @user = User.find_by_uid(session[:user_id])
    end
    if @user
      redirect_to kalendar_path()
    end
  end
end
