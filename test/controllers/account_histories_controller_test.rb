require 'test_helper'

class AccountHistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get account_histories_new_url
    assert_response :success
  end

  test "should get edit" do
    get account_histories_edit_url
    assert_response :success
  end

  test "should get show" do
    get account_histories_show_url
    assert_response :success
  end

  test "should get index" do
    get account_histories_index_url
    assert_response :success
  end

end
