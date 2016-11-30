class SummaryController < ApplicationController
  before_filter :current_user
  
  def view
    @dogs = [{ name: "Spot", price: 300}, { name: "Fluffy", price: 300 }, { name: "Lily", price: 300 }]
    @total = 900
  end
end
