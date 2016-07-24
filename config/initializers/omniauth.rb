OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '186850621535-cm1j3fcos8kstgbaf50rnmsb6395na2o.apps.googleusercontent.com', 'pptpUJ_1zCyEGkYOLa7gGfXR', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end