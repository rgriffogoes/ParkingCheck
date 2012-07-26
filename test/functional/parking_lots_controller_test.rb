require 'test_helper'

class ParkingLotsControllerTest < ActionController::TestCase
  setup do
    @parking_lot = parking_lots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parking_lots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parking_lot" do
    assert_difference('ParkingLot.count') do
      post :create, parking_lot: { angle: @parking_lot.angle, apartment: @parking_lot.apartment, building: @parking_lot.building, obs: @parking_lot.obs, x: @parking_lot.x, y: @parking_lot.y }
    end

    assert_redirected_to parking_lot_path(assigns(:parking_lot))
  end

  test "should show parking_lot" do
    get :show, id: @parking_lot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parking_lot
    assert_response :success
  end

  test "should update parking_lot" do
    put :update, id: @parking_lot, parking_lot: { angle: @parking_lot.angle, apartment: @parking_lot.apartment, building: @parking_lot.building, obs: @parking_lot.obs, x: @parking_lot.x, y: @parking_lot.y }
    assert_redirected_to parking_lot_path(assigns(:parking_lot))
  end

  test "should destroy parking_lot" do
    assert_difference('ParkingLot.count', -1) do
      delete :destroy, id: @parking_lot
    end

    assert_redirected_to parking_lots_path
  end
end
