require 'test_helper'

class SandwichesControllerTest < ActionController::TestCase
  setup do
    @sandwich = sandwiches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sandwiches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sandwich" do
    assert_difference('Sandwich.count') do
      post :create, sandwich: { ingredients: @sandwich.ingredients, name: @sandwich.name, price: @sandwich.price }
    end

    assert_redirected_to sandwich_path(assigns(:sandwich))
  end

  test "should show sandwich" do
    get :show, id: @sandwich
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sandwich
    assert_response :success
  end

  test "should update sandwich" do
    patch :update, id: @sandwich, sandwich: { ingredients: @sandwich.ingredients, name: @sandwich.name, price: @sandwich.price }
    assert_redirected_to sandwich_path(assigns(:sandwich))
  end

  test "should destroy sandwich" do
    assert_difference('Sandwich.count', -1) do
      delete :destroy, id: @sandwich
    end

    assert_redirected_to sandwiches_path
  end
end
