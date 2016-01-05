require 'spec_helper'

describe "destinations/new" do
  before(:each) do
    assign(:destination, stub_model(Destination,
      :name => "MyString",
      :description => "MyText",
      :image_map => "MyText"
    ).as_new_record)
  end

  it "renders new destination form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => destinations_path, :method => "post" do
      assert_select "input#destination_name", :name => "destination[name]"
      assert_select "textarea#destination_description", :name => "destination[description]"
      assert_select "textarea#destination_image_map", :name => "destination[image_map]"
    end
  end
end
