require 'spec_helper'

describe "enumviews/edit" do
  before(:each) do
    @enumview = assign(:enumview, stub_model(Enumview,
      :gender => ""
    ))
  end

  it "renders the edit enumview form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", enumview_path(@enumview), "post" do
      assert_select "input#enumview_gender[name=?]", "enumview[gender]"
    end
  end
end
