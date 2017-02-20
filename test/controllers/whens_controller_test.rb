require 'test_helper'

class WhensControllerTest < ActionDispatch::IntegrationTest
  test "should get when" do
    get whens_when_url
    assert_response :success
  end

end
