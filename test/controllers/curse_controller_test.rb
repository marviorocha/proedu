require 'test_helper'

class CurseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get curse_index_url
    assert_response :success
  end

  test "should get form" do
    get curse_form_url
    assert_response :success
  end

  test "should get new" do
    get curse_new_url
    assert_response :success
  end

end
