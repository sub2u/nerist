require 'test_helper'

class EmpprofilesControllerTest < ActionController::TestCase
  setup do
    @empprofile = empprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empprofile" do
    assert_difference('Empprofile.count') do
      post :create, :empprofile => @empprofile.attributes
    end

    assert_redirected_to empprofile_path(assigns(:empprofile))
  end

  test "should show empprofile" do
    get :show, :id => @empprofile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @empprofile.to_param
    assert_response :success
  end

  test "should update empprofile" do
    put :update, :id => @empprofile.to_param, :empprofile => @empprofile.attributes
    assert_redirected_to empprofile_path(assigns(:empprofile))
  end

  test "should destroy empprofile" do
    assert_difference('Empprofile.count', -1) do
      delete :destroy, :id => @empprofile.to_param
    end

    assert_redirected_to empprofiles_path
  end
end
