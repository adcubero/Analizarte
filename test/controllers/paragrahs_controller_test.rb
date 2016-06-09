require 'test_helper'

class ParagrahsControllerTest < ActionController::TestCase
  setup do
    @paragrah = paragrahs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paragrahs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paragrah" do
    assert_difference('Paragrah.count') do
      post :create, paragrah: { exam_id: @paragrah.exam_id }
    end

    assert_redirected_to paragrah_path(assigns(:paragrah))
  end

  test "should show paragrah" do
    get :show, id: @paragrah
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paragrah
    assert_response :success
  end

  test "should update paragrah" do
    patch :update, id: @paragrah, paragrah: { exam_id: @paragrah.exam_id }
    assert_redirected_to paragrah_path(assigns(:paragrah))
  end

  test "should destroy paragrah" do
    assert_difference('Paragrah.count', -1) do
      delete :destroy, id: @paragrah
    end

    assert_redirected_to paragrahs_path
  end
end
