require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Products Sample App"
  end

  test "should get root" do
    get '/'
    assert_response :success
    assert_select "title", @base_title
  end
  
end
