require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get store_main_url
    assert_response :success
  end

  test "should get index" do
    get store_index_url
    assert_response :success
  end

  test "should get buket" do
    get store_buket_url
    assert_response :success
  end

end
