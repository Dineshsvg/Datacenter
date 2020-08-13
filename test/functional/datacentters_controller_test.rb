require 'test_helper'

class DatacenttersControllerTest < ActionController::TestCase
  setup do
    @datacentter = datacentters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datacentters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datacentter" do
    assert_difference('Datacentter.count') do
      post :create, :datacentter => @datacentter.attributes
    end

    assert_redirected_to datacentter_path(assigns(:datacentter))
  end

  test "should show datacentter" do
    get :show, :id => @datacentter.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @datacentter.to_param
    assert_response :success
  end

  test "should update datacentter" do
    put :update, :id => @datacentter.to_param, :datacentter => @datacentter.attributes
    assert_redirected_to datacentter_path(assigns(:datacentter))
  end

  test "should destroy datacentter" do
    assert_difference('Datacentter.count', -1) do
      delete :destroy, :id => @datacentter.to_param
    end

    assert_redirected_to datacentters_path
  end
end
