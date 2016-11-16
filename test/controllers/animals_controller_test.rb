require 'test_helper'

class AnimalsControllerTest < ActionController::TestCase
  test "should get getAllAnimal" do
    get :getAllAnimal
    assert_response :success
  end

end
