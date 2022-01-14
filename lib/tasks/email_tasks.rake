desc 'weekly newsletter email'
task weekly_newsletter_email: :environment do
  UserMailer.newsletter_mail.deliver!
end