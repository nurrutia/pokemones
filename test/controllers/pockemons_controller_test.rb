require 'test_helper'

class PockemonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pockemon = pockemons(:one)
  end

  test "should get index" do
    get pockemons_url
    assert_response :success
  end

  test "should get new" do
    get new_pockemon_url
    assert_response :success
  end

  test "should create pockemon" do
    assert_difference('Pockemon.count') do
      post pockemons_url, params: { pockemon: { desciption: @pockemon.desciption, name: @pockemon.name, user_id: @pockemon.user_id } }
    end

    assert_redirected_to pockemon_url(Pockemon.last)
  end

  test "should show pockemon" do
    get pockemon_url(@pockemon)
    assert_response :success
  end

  test "should get edit" do
    get edit_pockemon_url(@pockemon)
    assert_response :success
  end

  test "should update pockemon" do
    patch pockemon_url(@pockemon), params: { pockemon: { desciption: @pockemon.desciption, name: @pockemon.name, user_id: @pockemon.user_id } }
    assert_redirected_to pockemon_url(@pockemon)
  end

  test "should destroy pockemon" do
    assert_difference('Pockemon.count', -1) do
      delete pockemon_url(@pockemon)
    end

    assert_redirected_to pockemons_url
  end
end
