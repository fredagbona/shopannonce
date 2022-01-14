require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  test "newsletter_mail" do
    mail = UserMailer.newsletter_mail
    assert_equal "Newsletter mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
