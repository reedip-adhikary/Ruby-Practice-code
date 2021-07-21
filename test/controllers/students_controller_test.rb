require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get reedip" do
    get students_reedip_url
    assert_response :success
  end
end
