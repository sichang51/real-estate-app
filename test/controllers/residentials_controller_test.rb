require "test_helper"

class ResidentialsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/residentials.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Residential.count, data.length
  end
end
