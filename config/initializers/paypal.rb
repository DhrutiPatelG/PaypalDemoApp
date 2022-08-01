PayPal::SDK.configure(
  mode: ENV['PAYPAL_ENV'],
  client_id: ENV['PAYPAL_CLIENT_ID'],
  client_secret: ENV['PAYPAL_CLIENT_SECRET'],
)
PayPal::SDK.logger.level = Logger::INFO

PayPal::SDK::Core::Util::HTTPHelper.class_eval do
  def default_ca_file
    File.expand_path("config/certs/cacert.pem")
  end 
end