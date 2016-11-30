class SummaryController < ApplicationController
  before_filter :current_user
  
  def view
    @dogs = [{ name: "Spot" }, { name: "Fluffy" }, { name: "Lily" }]
    @total = 900
  end
end
