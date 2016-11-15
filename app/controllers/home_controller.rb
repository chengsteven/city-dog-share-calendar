class HomeController < ApplicationController
  def index
    if session[:user_id]
      redirect_to kalendar_path()
    end
  end
end
