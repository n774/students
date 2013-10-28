require 'spec_helper'

describe "enumviews/index" do
  before(:each) do
    assign(:enumviews, [
      stub_model(Enumview,
        :gender => ""
      ),
      stub_model(Enumview,
        :gender => ""
      )
    ])
  end

  it "renders a list of enumviews" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
