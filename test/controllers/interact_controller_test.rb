require 'test_helper'

class InteractControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get interact_post_url
    assert_response :success
  end

end
