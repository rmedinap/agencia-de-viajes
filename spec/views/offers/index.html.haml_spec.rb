require 'spec_helper'

describe "offers/index" do
  before(:each) do
    assign(:offers, [
      stub_model(Offer,
        :title => "Title",
        :description => "MyText",
        :slug => "Slug"
      ),
      stub_model(Offer,
        :title => "Title",
        :description => "MyText",
        :slug => "Slug"
      )
    ])
  end

  it "renders a list of offers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
  end
end