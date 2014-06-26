Rails.application.config.middleware.use OmniAuth::Builder do
  provider :soundcloud, ENV['SOUNDCLOUD_KEY'], ENV['SOUNDCLOUD_SECRET'], {:client_options => {:ssl => {:ca_path => "/usr/local/etc/openssl/"}}}
end