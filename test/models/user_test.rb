require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(email: "abecs@tahss" , password: "12ah2gs", password_confirmation: "12ah2gs")
  end
  
  test "should be valid" do
    assert @user.valid?
  end

  test "email must be present" do
    @user.email = "  "
  end
  
  test "password not too shortt" do
    @user.password = @user.password_confirmation = "  " * 6
    assert_not @user.valid?
  end
  
  test "User is authenticated" do
    assert_not @user.authenticated?('')
  end

end 
