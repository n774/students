#coding: utf-8
require 'spec_helper'

describe "aiit_members/index" do
  before(:each) do
    assign(:aiit_members, [
      stub_model(AiitMember,
        :name => "Name",
        :kana_name => "Kana Name",
        :gender => "男",
        :memo => "MyText"
      ),
      stub_model(AiitMember,
        :name => "Name",
        :kana_name => "Kana Name",
        :gender => "男",
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of aiit_members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Kana Name".to_s, :count => 2
    assert_select "tr>td", :text => "男".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
