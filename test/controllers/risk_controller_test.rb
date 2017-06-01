require 'test_helper'

class RiskControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get risk_show_url
    assert_response :success
  end

end
