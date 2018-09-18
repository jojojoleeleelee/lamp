require 'test_helper'

class PeacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peace = peaces(:one)
  end

  test "should get index" do
    get peaces_url
    assert_response :success
  end

  test "should get new" do
    get new_peace_url
    assert_response :success
  end

  test "should create peace" do
    assert_difference('Peace.count') do
      post peaces_url, params: { peace: { book: @peace.book, chapter: @peace.chapter, word: @peace.word } }
    end

    assert_redirected_to peace_url(Peace.last)
  end

  test "should show peace" do
    get peace_url(@peace)
    assert_response :success
  end

  test "should get edit" do
    get edit_peace_url(@peace)
    assert_response :success
  end

  test "should update peace" do
    patch peace_url(@peace), params: { peace: { book: @peace.book, chapter: @peace.chapter, word: @peace.word } }
    assert_redirected_to peace_url(@peace)
  end

  test "should destroy peace" do
    assert_difference('Peace.count', -1) do
      delete peace_url(@peace)
    end

    assert_redirected_to peaces_url
  end
end
