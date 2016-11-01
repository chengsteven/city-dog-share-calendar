class User < ActiveRecord::Base
  
  
  attr_accessor :first_name, :last_name, :location, :gender, :image, :status, :phone_number, :email, :availability, :description, :address, :zipcode, :city, :country
  def update_credentials(credentials)
    oauth = Koala::Facebook::OAuth.new("541018786093799", "b02e59087efb86f9afe137e2bc7b4200")
    new_access_info = oauth.exchange_access_token_info(credentials[:token])
    
    new_access_token = new_access_info["access_token"]
    self.oauth_token = new_access_token
    new_access_expires_at = DateTime.now + new_access_info["expires"].to_i.seconds
    self.oauth_expires_at = new_access_expires_at
    self.save 
  end

  def facebook_info_update(auth)
    self.uid = auth[:uid]
    if(auth[:extra][:raw_info] != nil)
      self.gender = auth[:extra][:raw_info][:gender]
    end
    self.first_name = auth[:info][:first_name]
    self.last_name = auth[:info][:last_name]
    self.image = auth[:info][:image] + "?width=200&height=200"
    self.location = auth[:info][:location]
    self.email = auth[:info][:email]
    self.save
  end

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end

  def future_events?
    # for all events, if at least one comes after yesterday, return true
    events.where("end_date > ?", 1.day.ago.midnight).pluck('end_date') != []
  end
end
