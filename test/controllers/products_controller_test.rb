require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get products_path
    assert_response :success
  end

  test "should get new" do
    get new_product_path
    assert_response :success
  end

  test "should get show" do
    @product = Product.first
    get product_path(@product)
    assert_response :success
  end

  test "should get edit" do
    @product = Product.first
    get edit_product_path(@product)
    assert_response :success
  end

end
