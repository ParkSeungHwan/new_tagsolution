require 'test_helper'

class NewhomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newhome_index_url
    assert_response :success
  end

end
