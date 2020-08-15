require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get views" do
    get users_views_url
    assert_response :success
  end

end
