require 'test_helper'

class DankstuffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dankstuff = dankstuffs(:one)
  end

  test "should get index" do
    get dankstuffs_url
    assert_response :success
  end

  test "should get new" do
    get new_dankstuff_url
    assert_response :success
  end

  test "should create dankstuff" do
    assert_difference('Dankstuff.count') do
      post dankstuffs_url, params: { dankstuff: { date: @dankstuff.date, fname: @dankstuff.fname, lname: @dankstuff.lname } }
    end

    assert_redirected_to dankstuff_url(Dankstuff.last)
  end

  test "should show dankstuff" do
    get dankstuff_url(@dankstuff)
    assert_response :success
  end

  test "should get edit" do
    get edit_dankstuff_url(@dankstuff)
    assert_response :success
  end

  test "should update dankstuff" do
    patch dankstuff_url(@dankstuff), params: { dankstuff: { date: @dankstuff.date, fname: @dankstuff.fname, lname: @dankstuff.lname } }
    assert_redirected_to dankstuff_url(@dankstuff)
  end

  test "should destroy dankstuff" do
    assert_difference('Dankstuff.count', -1) do
      delete dankstuff_url(@dankstuff)
    end

    assert_redirected_to dankstuffs_url
  end
end
