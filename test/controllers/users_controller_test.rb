require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { email: @user.email, f_name: @user.f_name, l_name: @user.l_name, lic_initial_date: @user.lic_initial_date, lic_number: @user.lic_number, lic_state: @user.lic_state, password_digest: @user.password_digest }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { email: @user.email, f_name: @user.f_name, l_name: @user.l_name, lic_initial_date: @user.lic_initial_date, lic_number: @user.lic_number, lic_state: @user.lic_state, password_digest: @user.password_digest }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
