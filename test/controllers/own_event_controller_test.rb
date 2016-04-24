require 'test_helper'

class OwnEventControllerTest < ActionController::TestCase
  test "should get own_event" do
    get :own_event
    assert_response :success
  end

end
