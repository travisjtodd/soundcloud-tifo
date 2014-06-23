Rails.application.config.middleware.use OmniAuth::Builder do
  provider :soundcloud, ENV['SOUNDCOULD_KEY'], ENV['SOUNDCOULD_SECRET'], {:client_options => {:ssl => {:ca_path => "/usr/local/etc/openssl/"}}}
end