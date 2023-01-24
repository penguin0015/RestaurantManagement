require "test_helper"

class ReservationTablesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reservation_tables_index_url
    assert_response :success
  end
end
