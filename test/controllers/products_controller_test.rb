require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
 
  test "should get new" do
    get new_product_path
    assert_response :success
  end

  test "should show product" do
    get products_path
    assert_response :success
    assert(products, true)
  end
end
