require 'spec_helper'

describe "enumviews/show" do
  before(:each) do
    @enumview = assign(:enumview, stub_model(Enumview,
      :gender => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
