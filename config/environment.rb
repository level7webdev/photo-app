# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => ENV['MAILGUN_SMTP_SERVER'],
  :port           => ENV['MAILGUN_SMTP_PORT'],
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain         => 'l7wd-photo-app.heroku.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp