class ApplicationMailer < ActionMailer::Base
  default from: email_address_with_name("from@example.com", "Anas Group of Companies")
  layout "mailer"
end
