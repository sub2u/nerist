require 'test_helper'

class StuprofilesControllerTest < ActionController::TestCase
  setup do
    @stuprofile = stuprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stuprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stuprofile" do
    assert_difference('Stuprofile.count') do
      post :create, :stuprofile => @stuprofile.attributes
    end

    assert_redirected_to stuprofile_path(assigns(:stuprofile))
  end

  test "should show stuprofile" do
    get :show, :id => @stuprofile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @stuprofile.to_param
    assert_response :success
  end

  test "should update stuprofile" do
    put :update, :id => @stuprofile.to_param, :stuprofile => @stuprofile.attributes
    assert_redirected_to stuprofile_path(assigns(:stuprofile))
  end

  test "should destroy stuprofile" do
    assert_difference('Stuprofile.count', -1) do
      delete :destroy, :id => @stuprofile.to_param
    end

    assert_redirected_to stuprofiles_path
  end
end
