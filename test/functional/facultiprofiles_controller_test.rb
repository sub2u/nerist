require 'test_helper'

class FacultiprofilesControllerTest < ActionController::TestCase
  setup do
    @facultiprofile = facultiprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facultiprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facultiprofile" do
    assert_difference('Facultiprofile.count') do
      post :create, :facultiprofile => @facultiprofile.attributes
    end

    assert_redirected_to facultiprofile_path(assigns(:facultiprofile))
  end

  test "should show facultiprofile" do
    get :show, :id => @facultiprofile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @facultiprofile.to_param
    assert_response :success
  end

  test "should update facultiprofile" do
    put :update, :id => @facultiprofile.to_param, :facultiprofile => @facultiprofile.attributes
    assert_redirected_to facultiprofile_path(assigns(:facultiprofile))
  end

  test "should destroy facultiprofile" do
    assert_difference('Facultiprofile.count', -1) do
      delete :destroy, :id => @facultiprofile.to_param
    end

    assert_redirected_to facultiprofiles_path
  end
end
