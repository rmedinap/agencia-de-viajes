require 'spec_helper'

describe "CountryPictures" do
  describe "GET /country_pictures" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get country_pictures_path
      response.status.should be(200)
    end
  end
end
