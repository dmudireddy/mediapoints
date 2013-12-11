require 'test_helper'

class VideoassetsControllerTest < ActionController::TestCase
  setup do
    @videoasset = videoassets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:videoassets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create videoasset" do
    assert_difference('Videoasset.count') do
      post :create, videoasset: { merlinid: @videoasset.merlinid }
    end

    assert_redirected_to videoasset_path(assigns(:videoasset))
  end

  test "should show videoasset" do
    get :show, id: @videoasset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @videoasset
    assert_response :success
  end

  test "should update videoasset" do
    patch :update, id: @videoasset, videoasset: { merlinid: @videoasset.merlinid }
    assert_redirected_to videoasset_path(assigns(:videoasset))
  end

  test "should destroy videoasset" do
    assert_difference('Videoasset.count', -1) do
      delete :destroy, id: @videoasset
    end

    assert_redirected_to videoassets_path
  end
end
