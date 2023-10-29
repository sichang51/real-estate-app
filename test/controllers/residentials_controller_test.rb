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

  test "create" do
    assert_difference "Residential.count", 1 do
      post "/residentials.json", params: { description: "3 story townhome with 2 bedrooms, 2 car garage, public swimming pool and community center", year_built: 1970, square_feet: 1800, bedrooms: 2, bathrooms: 1.25, floors: 3, availability: "11/01/2023", address: "545 Anything Street, Unit. B, Burbank, CA 94500", price: 614000 }
      assert_response 200
    end
  end

  test "show" do
    get "/residentials/#{Residential.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "description", "year_built", "square_feet", "bedrooms", "bathrooms", "floors", "availability", "address", "price", "created_at", "updated_at"], data.keys
  end
end
