require 'spec_helper'

describe "milestones/new" do
  before(:each) do
    assign(:milestone, stub_model(Milestone,
      :title => "MyString",
      :description => "MyText",
      :telefono2 => "MyString"
    ).as_new_record)
  end

  it "renders new milestone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => milestones_path, :method => "post" do
      assert_select "input#milestone_title", :name => "milestone[title]"
      assert_select "textarea#milestone_description", :name => "milestone[description]"
      assert_select "input#milestone_telefono2", :name => "milestone[telefono2]"
    end
  end
end
