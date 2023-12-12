require "test_helper"

class DecryptConControllerTest < ActionDispatch::IntegrationTest
  test "should get DecryptView" do
    get decrypt_con_DecryptView_url
    assert_response :success
  end
end
