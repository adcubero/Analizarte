require 'test_helper'

class MultiOptionsControllerTest < ActionController::TestCase
  setup do
    @multi_option = multi_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:multi_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create multi_option" do
    assert_difference('MultiOption.count') do
      post :create, multi_option: { multiple_choice_id: @multi_option.multiple_choice_id, option: @multi_option.option }
    end

    assert_redirected_to multi_option_path(assigns(:multi_option))
  end

  test "should show multi_option" do
    get :show, id: @multi_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @multi_option
    assert_response :success
  end

  test "should update multi_option" do
    patch :update, id: @multi_option, multi_option: { multiple_choice_id: @multi_option.multiple_choice_id, option: @multi_option.option }
    assert_redirected_to multi_option_path(assigns(:multi_option))
  end

  test "should destroy multi_option" do
    assert_difference('MultiOption.count', -1) do
      delete :destroy, id: @multi_option
    end

    assert_redirected_to multi_options_path
  end
end
