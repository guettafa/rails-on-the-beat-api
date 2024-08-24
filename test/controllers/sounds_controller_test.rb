require "test_helper"

class SoundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sound = sounds(:one)
  end

  test "should get index" do
    get sounds_url, as: :json
    assert_response :success
  end

  test "should create sound" do
    assert_difference("Sound.count") do
      post sounds_url, params: { sound: { description: @sound.description, title: @sound.title } }, as: :json
    end

    assert_response :created
  end

  test "should show sound" do
    get sound_url(@sound), as: :json
    assert_response :success
  end

  test "should update sound" do
    patch sound_url(@sound), params: { sound: { description: @sound.description, title: @sound.title } }, as: :json
    assert_response :success
  end

  test "should destroy sound" do
    assert_difference("Sound.count", -1) do
      delete sound_url(@sound), as: :json
    end

    assert_response :no_content
  end
end
