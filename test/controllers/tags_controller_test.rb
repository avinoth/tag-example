require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  test "should get autocomplete" do
    get :autocomplete
    assert_response :success
  end

end
