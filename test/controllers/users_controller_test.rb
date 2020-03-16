require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get longin_form" do
    get users_longin_form_url
    assert_response :success
  end

end
