require 'spec_helper'

describe "enumviews/new" do
  before(:each) do
    assign(:enumview, stub_model(Enumview,
      :gender => ""
    ).as_new_record)
  end

  it "renders new enumview form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", enumviews_path, "post" do
      assert_select "input#enumview_gender[name=?]", "enumview[gender]"
    end
  end
end
