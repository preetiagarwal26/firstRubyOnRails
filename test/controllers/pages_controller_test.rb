require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get information" do
    get pages_information_url
    assert_response :success
  end

end
