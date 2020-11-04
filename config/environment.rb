# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => Rails.application.credentials.Mailgun[:MAILGUN_SMTP_PORT],
  :address        => Rails.application.credentials.Mailgun[:MAILGUN_SMTP_SERVER],
  :user_name      => Rails.application.credentials.Mailgun[:MAILGUN_SMTP_LOGIN],
  :password       => Rails.application.credentials.Mailgun[:MAILGUN_SMTP_PASSWORD],
  :domain         => 'l7wd-photo-app.heroku.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp