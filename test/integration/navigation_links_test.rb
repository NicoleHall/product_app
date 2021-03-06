require "test_helper"

class NavigationLinksTest < ActionDispatch::IntegrationTest
  test "links go to the expected destination" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", new_product_path
  end
end
