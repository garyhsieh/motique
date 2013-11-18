require 'test_helper'

class MotivatorsControllerTest < ActionController::TestCase
  setup do
    @motivator = motivators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motivators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motivator" do
    assert_difference('Motivator.count') do
      post :create, motivator: { description: @motivator.description, title: @motivator.title, user_id: @motivator.user_id }
    end

    assert_redirected_to motivator_path(assigns(:motivator))
  end

  test "should show motivator" do
    get :show, id: @motivator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @motivator
    assert_response :success
  end

  test "should update motivator" do
    put :update, id: @motivator, motivator: { description: @motivator.description, title: @motivator.title, user_id: @motivator.user_id }
    assert_redirected_to motivator_path(assigns(:motivator))
  end

  test "should destroy motivator" do
    assert_difference('Motivator.count', -1) do
      delete :destroy, id: @motivator
    end

    assert_redirected_to motivators_path
  end
end
