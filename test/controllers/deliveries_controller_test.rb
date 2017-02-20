require 'test_helper'

class DeliveriesControllerTest < ActionDispatch::IntegrationTest
  test "should get delivery" do
    get deliveries_delivery_url
    assert_response :success
  end

end
