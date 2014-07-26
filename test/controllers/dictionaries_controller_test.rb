require 'test_helper'

class DictionariesControllerTest < ActionController::TestCase
  setup do
    @dictionary = dictionaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dictionaries)
  end

  test "should not filter in index if 'searchText' is empty" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dictionaries)
    assert_equal [dictionaries(:one), dictionaries(:two)], assigns(:dictionaries).to_a
  end

  test "should not filter in index if 'searchText' is not empty" do
    get :index, searchText: "1"
    assert_response :success
    assert_not_nil assigns(:dictionaries)
    assert_equal [dictionaries(:one)], assigns(:dictionaries).to_a
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dictionary" do
    assert_difference('Dictionary.count') do
      post :create, dictionary: { meaning: @dictionary.meaning, word: @dictionary.word }
    end

    assert_redirected_to dictionary_path(assigns(:dictionary))
  end

  test "should show dictionary" do
    get :show, id: @dictionary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dictionary
    assert_response :success
  end

  test "should update dictionary" do
    patch :update, id: @dictionary, dictionary: { meaning: @dictionary.meaning, word: @dictionary.word }
    assert_redirected_to dictionary_path(assigns(:dictionary))
  end

  test "should destroy dictionary" do
    assert_difference('Dictionary.count', -1) do
      delete :destroy, id: @dictionary
    end

    assert_redirected_to dictionaries_path
  end
end
