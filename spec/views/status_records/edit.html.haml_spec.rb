require 'spec_helper'

describe "status_records/edit" do
  before(:each) do
    @status_record = assign(:status_record, stub_model(StatusRecord,
      :status => "MyString",
      :absence_time => "MyString",
      :absence_reason => "MyString",
      :memo => "MyString"
    ))
  end

  it "renders the edit status_record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", status_record_path(@status_record), "post" do
      assert_select "input#status_record_status[name=?]", "status_record[status]"
      assert_select "input#status_record_absence_time[name=?]", "status_record[absence_time]"
      assert_select "input#status_record_absence_reason[name=?]", "status_record[absence_reason]"
      assert_select "input#status_record_memo[name=?]", "status_record[memo]"
    end
  end
end