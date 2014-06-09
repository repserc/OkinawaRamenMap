require 'test_helper'

class ShopsControllerTest < ActionController::TestCase
  setup do
    @shop = shops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop" do
    assert_difference('Shop.count') do
      post :create, shop: { address: @shop.address, category: @shop.category, delivary: @shop.delivary, gps: @shop.gps, holiday: @shop.holiday, hour: @shop.hour, kana: @shop.kana, name: @shop.name, phone: @shop.phone, tag: @shop.tag }
    end

    assert_redirected_to shop_path(assigns(:shop))
  end

  test "should show shop" do
    get :show, id: @shop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop
    assert_response :success
  end

  test "should update shop" do
    patch :update, id: @shop, shop: { address: @shop.address, category: @shop.category, delivary: @shop.delivary, gps: @shop.gps, holiday: @shop.holiday, hour: @shop.hour, kana: @shop.kana, name: @shop.name, phone: @shop.phone, tag: @shop.tag }
    assert_redirected_to shop_path(assigns(:shop))
  end

  test "should destroy shop" do
    assert_difference('Shop.count', -1) do
      delete :destroy, id: @shop
    end

    assert_redirected_to shops_path
  end
end
