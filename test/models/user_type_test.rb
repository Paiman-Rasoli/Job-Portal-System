require "test_helper"

class UserTypeTest < ActiveSupport::TestCase

  test "Create an account type" do
    newUserType = UserType.new(account_type: "HR")
    assert newUserType.save
  end

  test "Get all account types" do
    types = UserType.all
    assert_operator types.size, :>, 0
  end

end
