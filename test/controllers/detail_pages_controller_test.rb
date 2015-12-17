require 'test_helper'

class DetailPagesControllerTest < ActionController::TestCase
  setup do
    @detail_page = detail_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detail_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detail_page" do
    assert_difference('DetailPage.count') do
      post :create, detail_page: {  }
    end

    assert_redirected_to detail_page_path(assigns(:detail_page))
  end

  test "should show detail_page" do
    get :show, id: @detail_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detail_page
    assert_response :success
  end

  test "should update detail_page" do
    patch :update, id: @detail_page, detail_page: {  }
    assert_redirected_to detail_page_path(assigns(:detail_page))
  end

  test "should destroy detail_page" do
    assert_difference('DetailPage.count', -1) do
      delete :destroy, id: @detail_page
    end

    assert_redirected_to detail_pages_path
  end
end
