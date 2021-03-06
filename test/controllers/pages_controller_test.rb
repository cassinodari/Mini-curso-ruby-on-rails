require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get catalog" do
    get pages_catalog_url
    assert_response :success
  end

  test "should get products" do
    get pages_products_url
    assert_response :success
  end

end
