require 'test_helper'

class AluminiprofilesControllerTest < ActionController::TestCase
  setup do
    @aluminiprofile = aluminiprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aluminiprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aluminiprofile" do
    assert_difference('Aluminiprofile.count') do
      post :create, :aluminiprofile => @aluminiprofile.attributes
    end

    assert_redirected_to aluminiprofile_path(assigns(:aluminiprofile))
  end

  test "should show aluminiprofile" do
    get :show, :id => @aluminiprofile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @aluminiprofile.to_param
    assert_response :success
  end

  test "should update aluminiprofile" do
    put :update, :id => @aluminiprofile.to_param, :aluminiprofile => @aluminiprofile.attributes
    assert_redirected_to aluminiprofile_path(assigns(:aluminiprofile))
  end

  test "should destroy aluminiprofile" do
    assert_difference('Aluminiprofile.count', -1) do
      delete :destroy, :id => @aluminiprofile.to_param
    end

    assert_redirected_to aluminiprofiles_path
  end
end
