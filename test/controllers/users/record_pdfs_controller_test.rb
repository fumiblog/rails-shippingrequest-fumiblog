require "test_helper"

class Users::RecordPdfsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_record_pdfs_index_url
    assert_response :success
  end
end
