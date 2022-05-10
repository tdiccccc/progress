require "test_helper"

class Worker::ProgressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get worker_progresses_index_url
    assert_response :success
  end
end
