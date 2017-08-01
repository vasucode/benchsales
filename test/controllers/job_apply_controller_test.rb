require 'test_helper'

class JobApplyControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get job_apply_new_url
    assert_response :success
  end

  test "should get index" do
    get job_apply_index_url
    assert_response :success
  end

  test "should get create" do
    get job_apply_create_url
    assert_response :success
  end

  test "should get show" do
    get job_apply_show_url
    assert_response :success
  end

end
