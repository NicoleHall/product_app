require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_product_path
    assert_response :success
  end
end
