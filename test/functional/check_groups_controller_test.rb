require 'test_helper'

class CheckGroupsControllerTest < ActionController::TestCase
  setup do
    @check_group = check_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:check_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create check_group" do
    assert_difference('CheckGroup.count') do
      post :create, check_group: { number: @check_group.number, refDate: @check_group.refDate }
    end

    assert_redirected_to check_group_path(assigns(:check_group))
  end

  test "should show check_group" do
    get :show, id: @check_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @check_group
    assert_response :success
  end

  test "should update check_group" do
    put :update, id: @check_group, check_group: { number: @check_group.number, refDate: @check_group.refDate }
    assert_redirected_to check_group_path(assigns(:check_group))
  end

  test "should destroy check_group" do
    assert_difference('CheckGroup.count', -1) do
      delete :destroy, id: @check_group
    end

    assert_redirected_to check_groups_path
  end
end
