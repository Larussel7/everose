require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get delivery" do
    get orders_delivery_url
    assert_response :success
  end

  test "should get when" do
    get orders_when_url
    assert_response :success
  end

  test "should get extra" do
    get orders_extra_url
    assert_response :success
  end

  test "should get note" do
    get orders_note_url
    assert_response :success
  end

  test "should get payment" do
    get orders_payment_url
    assert_response :success
  end

end
