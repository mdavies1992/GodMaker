require "test_helper"

class GodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gods_index_url
    assert_response :success
  end

  test "should get show" do
    get gods_show_url
    assert_response :success
  end

  test "should get new" do
    get gods_new_url
    assert_response :success
  end

  test "should get create" do
    get gods_create_url
    assert_response :success
  end
end
