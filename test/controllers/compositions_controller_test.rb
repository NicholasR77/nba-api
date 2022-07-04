require 'test_helper'

class CompositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @composition = compositions(:one)
  end

  test "should get index" do
    get compositions_url, as: :json
    assert_response :success
  end

  test "should create composition" do
    assert_difference('Composition.count') do
      post compositions_url, params: { composition: { author: @composition.author, votes: @composition.votes } }, as: :json
    end

    assert_response 201
  end

  test "should show composition" do
    get composition_url(@composition), as: :json
    assert_response :success
  end

  test "should update composition" do
    patch composition_url(@composition), params: { composition: { author: @composition.author, votes: @composition.votes } }, as: :json
    assert_response 200
  end

  test "should destroy composition" do
    assert_difference('Composition.count', -1) do
      delete composition_url(@composition), as: :json
    end

    assert_response 204
  end
end
