require 'test_helper'

class CustomerAppsControllerTest < ActionController::TestCase
  setup do
    @customer_app = customer_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_app" do
    assert_difference('CustomerApp.count') do
      post :create, customer_app: { contact_email: @customer_app.contact_email, contact_name: @customer_app.contact_name, custom_url: @customer_app.custom_url, description: @customer_app.description, name: @customer_app.name, site_title: @customer_app.site_title, slug: @customer_app.slug }
    end

    assert_redirected_to customer_app_path(assigns(:customer_app))
  end

  test "should show customer_app" do
    get :show, id: @customer_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_app
    assert_response :success
  end

  test "should update customer_app" do
    patch :update, id: @customer_app, customer_app: { contact_email: @customer_app.contact_email, contact_name: @customer_app.contact_name, custom_url: @customer_app.custom_url, description: @customer_app.description, name: @customer_app.name, site_title: @customer_app.site_title, slug: @customer_app.slug }
    assert_redirected_to customer_app_path(assigns(:customer_app))
  end

  test "should destroy customer_app" do
    assert_difference('CustomerApp.count', -1) do
      delete :destroy, id: @customer_app
    end

    assert_redirected_to customer_apps_path
  end
end
