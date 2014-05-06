require 'test_helper'

class DemoListsControllerTest < ActionController::TestCase
  setup do
    @demo_list = demo_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demo_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demo_list" do
    assert_difference('DemoList.count') do
      post :create, demo_list: { content: @demo_list.content, name: @demo_list.name }
    end

    assert_redirected_to demo_list_path(assigns(:demo_list))
  end

  test "should show demo_list" do
    get :show, id: @demo_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demo_list
    assert_response :success
  end

  test "should update demo_list" do
    patch :update, id: @demo_list, demo_list: { content: @demo_list.content, name: @demo_list.name }
    assert_redirected_to demo_list_path(assigns(:demo_list))
  end

  test "should destroy demo_list" do
    assert_difference('DemoList.count', -1) do
      delete :destroy, id: @demo_list
    end

    assert_redirected_to demo_lists_path
  end
end
