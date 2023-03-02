require "test_helper"

class LoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lore = lores(:one)
  end

  test "should get index" do
    get lores_url
    assert_response :success
  end

  test "should get new" do
    get new_lore_url
    assert_response :success
  end

  test "should create lore" do
    assert_difference("Lore.count") do
      post lores_url, params: { lore: { content: @lore.content, image: @lore.image, title: @lore.title } }
    end

    assert_redirected_to lore_url(Lore.last)
  end

  test "should show lore" do
    get lore_url(@lore)
    assert_response :success
  end

  test "should get edit" do
    get edit_lore_url(@lore)
    assert_response :success
  end

  test "should update lore" do
    patch lore_url(@lore), params: { lore: { content: @lore.content, image: @lore.image, title: @lore.title } }
    assert_redirected_to lore_url(@lore)
  end

  test "should destroy lore" do
    assert_difference("Lore.count", -1) do
      delete lore_url(@lore)
    end

    assert_redirected_to lores_url
  end
end
