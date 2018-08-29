require 'test_helper'

class BasketControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get basket_index_url
    assert_response :success
  end

  test "should get html" do
    get basket_html_url
    assert_response :success
  end

end
