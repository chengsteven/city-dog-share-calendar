OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do

# App ID and App secret for test app
provider :facebook, '541018786093799', 'b02e59087efb86f9afe137e2bc7b4200', {:info_fields => 'email,first_name,last_name,location,gender', :client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}} 

end