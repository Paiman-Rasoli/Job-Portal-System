require "test_helper"

class UserAccountTest < ActiveSupport::TestCase

  test "Should not save record because of missing email column" do
    account = UserAccount.new(
      password_digest: "Adsad44sdf",
      data_of_birth: "2023-08-16",
      gender: "F",
      is_active: false,
      contact_number: "MyString",
      sms_notification_active: false,
      email_notification_active: false,
      user_image: "MyString",
      user_types_id: 1
    )
    assert_not account.save
  end
end
