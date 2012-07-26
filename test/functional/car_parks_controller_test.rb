require 'test_helper'

class CarParksControllerTest < ActionController::TestCase
  setup do
    @car_park = car_parks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_parks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_park" do
    assert_difference('CarPark.count') do
      post :create, car_park: { apartment: @car_park.apartment, building: @car_park.building, car_id: @car_park.car_id, checkGroup_id: @car_park.checkGroup_id, obs: @car_park.obs, parkingLot_id: @car_park.parkingLot_id }
    end

    assert_redirected_to car_park_path(assigns(:car_park))
  end

  test "should show car_park" do
    get :show, id: @car_park
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_park
    assert_response :success
  end

  test "should update car_park" do
    put :update, id: @car_park, car_park: { apartment: @car_park.apartment, building: @car_park.building, car_id: @car_park.car_id, checkGroup_id: @car_park.checkGroup_id, obs: @car_park.obs, parkingLot_id: @car_park.parkingLot_id }
    assert_redirected_to car_park_path(assigns(:car_park))
  end

  test "should destroy car_park" do
    assert_difference('CarPark.count', -1) do
      delete :destroy, id: @car_park
    end

    assert_redirected_to car_parks_path
  end
end
