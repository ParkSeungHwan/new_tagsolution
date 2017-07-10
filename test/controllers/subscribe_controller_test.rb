require 'test_helper'

class SubscribeControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get subscribe_create_url
    assert_response :success
  end

  test "should get destroy" do
    get subscribe_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get subscribe_edit_url
    assert_response :success
  end

  test "should get index" do
    get subscribe_index_url
    assert_response :success
  end

  test "should get new" do
    get subscribe_new_url
    assert_response :success
  end

  test "should get show" do
    get subscribe_show_url
    assert_response :success
  end

  test "should get update" do
    get subscribe_update_url
    assert_response :success
  end

end
