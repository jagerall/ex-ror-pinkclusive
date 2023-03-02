require "test_helper"

class ParasitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parasite = parasites(:one)
  end

  test "should get index" do
    get parasites_url
    assert_response :success
  end

  test "should get new" do
    get new_parasite_url
    assert_response :success
  end

  test "should create parasite" do
    assert_difference("Parasite.count") do
      post parasites_url, params: { parasite: { atk: @parasite.atk, capacity: @parasite.capacity, def: @parasite.def, description: @parasite.description, image: @parasite.image, name: @parasite.name, pv: @parasite.pv } }
    end

    assert_redirected_to parasite_url(Parasite.last)
  end

  test "should show parasite" do
    get parasite_url(@parasite)
    assert_response :success
  end

  test "should get edit" do
    get edit_parasite_url(@parasite)
    assert_response :success
  end

  test "should update parasite" do
    patch parasite_url(@parasite), params: { parasite: { atk: @parasite.atk, capacity: @parasite.capacity, def: @parasite.def, description: @parasite.description, image: @parasite.image, name: @parasite.name, pv: @parasite.pv } }
    assert_redirected_to parasite_url(@parasite)
  end

  test "should destroy parasite" do
    assert_difference("Parasite.count", -1) do
      delete parasite_url(@parasite)
    end

    assert_redirected_to parasites_url
  end
end
