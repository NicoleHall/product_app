require "test_helper"

class ProductsCreateTest < ActionDispatch::IntegrationTest

  test "invalid product creation" do
    get products_path
    assert_no_difference 'Product.count' do
      post products_path, params: { product: { name:  "", ingredient: "mud"} }
    end
    assert_template 'products/new'
  end

  test "invalid product creation will show error" do
    get products_path
    assert_no_difference 'Product.count' do
      post products_path, params: { product: { name:  "", ingredient: "mud"} }
    end
    assert_template 'products/new'
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
  end


end
