require 'test_helper'

class EventUserControllerTest < ActionController::TestCase
  test "should get add_to_table" do
    get :add_to_table
    assert_response :success
  end

end
