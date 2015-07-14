require 'test_helper'

class UserScaffoldsControllerTest < ActionController::TestCase
  setup do
    @user_scaffold = user_scaffolds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_scaffolds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_scaffold" do
    assert_difference('UserScaffold.count') do
      post :create, user_scaffold: { age: @user_scaffold.age, email: @user_scaffold.email, first_name: @user_scaffold.first_name, last_name: @user_scaffold.last_name }
    end

    assert_redirected_to user_scaffold_path(assigns(:user_scaffold))
  end

  test "should show user_scaffold" do
    get :show, id: @user_scaffold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_scaffold
    assert_response :success
  end

  test "should update user_scaffold" do
    patch :update, id: @user_scaffold, user_scaffold: { age: @user_scaffold.age, email: @user_scaffold.email, first_name: @user_scaffold.first_name, last_name: @user_scaffold.last_name }
    assert_redirected_to user_scaffold_path(assigns(:user_scaffold))
  end

  test "should destroy user_scaffold" do
    assert_difference('UserScaffold.count', -1) do
      delete :destroy, id: @user_scaffold
    end

    assert_redirected_to user_scaffolds_path
  end
end
