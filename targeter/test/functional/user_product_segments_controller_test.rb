require 'test_helper'

class UserProductSegmentsControllerTest < ActionController::TestCase
  setup do
    @user_product_segment = user_product_segments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_product_segments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_product_segment" do
    assert_difference('UserProductSegment.count') do
      post :create, user_product_segment: {  }
    end

    assert_redirected_to user_product_segment_path(assigns(:user_product_segment))
  end

  test "should show user_product_segment" do
    get :show, id: @user_product_segment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_product_segment
    assert_response :success
  end

  test "should update user_product_segment" do
    put :update, id: @user_product_segment, user_product_segment: {  }
    assert_redirected_to user_product_segment_path(assigns(:user_product_segment))
  end

  test "should destroy user_product_segment" do
    assert_difference('UserProductSegment.count', -1) do
      delete :destroy, id: @user_product_segment
    end

    assert_redirected_to user_product_segments_path
  end
end
