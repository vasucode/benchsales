require 'test_helper'

class HotListControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hot_list_new_url
    assert_response :success
  end

  test "should get index" do
    get hot_list_index_url
    assert_response :success
  end

  test "should get show" do
    get hot_list_show_url
    assert_response :success
  end

  test "should get create" do
    get hot_list_create_url
    assert_response :success
  end

end
