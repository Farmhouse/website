require 'test_helper'

class PodcastControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get feed" do
    get :feed
    assert_response :success
  end

end
