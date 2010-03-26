# Email settings
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.raise_delivery_errors = false

if RAILS_ENV == "production"
  ActionMailer::Base.default_url_options[:host] = 'proman.cpjobling.org.uk'
  ActionMailer::Base.perform_deliveries = true

  ActionMailer::Base.smtp_settings = {
    :address => "localhost",
    :port => 25,
    :domain => "cpjobling.org.uk"
  }
end

if RAILS_ENV == "development"
  ActionMailer::Base.default_url_options[:host] = 'www.localhost.com'
  ActionMailer::Base.perform_deliveries = false

  ActionMailer::Base.smtp_settings = {
    :enable_starttls_auto => true,
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => 'gmail.com',
    :authentication => :plain,
    :user_name => APP_CONFIG['development_smtp_username'], 
    :password =>  APP_CONFIG['developement_smtp_password']
  }

end

if RAILS_ENV == "test"
  ActionMailer::Base.default_url_options[:host] = 'www.example.com'
  ActionMailer::Base.delivery_method = :test
end