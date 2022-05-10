require "test_helper"

class Admin::ProgressControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_progress_index_url
    assert_response :success
  end
end
