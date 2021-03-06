require 'spec_helper'

describe "status_records/new" do
  before(:each) do
    assign(:status_record, stub_model(StatusRecord,
      :student_list_id => 1,
      :status => "MyString",
      :absence_time => "MyString",
      :absence_reason => "MyString",
      :return_reason => "MyString",
      :memo => "MyText"
    ).as_new_record)
  end

  it "renders new status_record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", status_records_path, "post" do
      assert_select "input#status_record_student_list_id[name=?]", "status_record[student_list_id]"
      assert_select "input#status_record_status[name=?]", "status_record[status]"
      assert_select "input#status_record_absence_time[name=?]", "status_record[absence_time]"
      assert_select "input#status_record_absence_reason[name=?]", "status_record[absence_reason]"
      assert_select "input#status_record_return_reason[name=?]", "status_record[return_reason]"
      assert_select "textarea#status_record_memo[name=?]", "status_record[memo]"
    end
  end
end
