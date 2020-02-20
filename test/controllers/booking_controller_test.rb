require 'test_helper'

class BookingControllerTest < ActionDispatch::IntegrationTest
  test "should get moissonneuses:references" do
    get booking_moissonneuses:references_url
    assert_response :success
  end

  test "should get description:text" do
    get booking_description:text_url
    assert_response :success
  end

end
