require 'test_helper'

class DanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dank = danks(:one)
  end

  test "should get index" do
    get danks_url
    assert_response :success
  end

  test "should get new" do
    get new_dank_url
    assert_response :success
  end

  test "should create dank" do
    assert_difference('Dank.count') do
      post danks_url, params: { dank: { name: @dank.name } }
    end

    assert_redirected_to dank_url(Dank.last)
  end

  test "should show dank" do
    get dank_url(@dank)
    assert_response :success
  end

  test "should get edit" do
    get edit_dank_url(@dank)
    assert_response :success
  end

  test "should update dank" do
    patch dank_url(@dank), params: { dank: { name: @dank.name } }
    assert_redirected_to dank_url(@dank)
  end

  test "should destroy dank" do
    assert_difference('Dank.count', -1) do
      delete dank_url(@dank)
    end

    assert_redirected_to danks_url
  end
end
