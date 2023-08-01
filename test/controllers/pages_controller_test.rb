require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get athlete" do
    get pages_athlete_url
    assert_response :success
  end

  test "should get director" do
    get pages_director_url
    assert_response :success
  end
end
