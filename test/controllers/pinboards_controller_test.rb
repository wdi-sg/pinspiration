require 'test_helper'

class PinboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pinboard = pinboards(:one)
  end

  test "should get index" do
    get pinboards_url
    assert_response :success
  end

  test "should get new" do
    get new_pinboard_url
    assert_response :success
  end

  test "should create pinboard" do
    assert_difference('Pinboard.count') do
      post pinboards_url, params: { pinboard: { title: @pinboard.title, user_id: @pinboard.user_id } }
    end

    assert_redirected_to pinboard_url(Pinboard.last)
  end

  test "should show pinboard" do
    get pinboard_url(@pinboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_pinboard_url(@pinboard)
    assert_response :success
  end

  test "should update pinboard" do
    patch pinboard_url(@pinboard), params: { pinboard: { title: @pinboard.title, user_id: @pinboard.user_id } }
    assert_redirected_to pinboard_url(@pinboard)
  end

  test "should destroy pinboard" do
    assert_difference('Pinboard.count', -1) do
      delete pinboard_url(@pinboard)
    end

    assert_redirected_to pinboards_url
  end
end
