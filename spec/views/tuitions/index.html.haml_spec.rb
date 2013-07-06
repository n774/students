require 'spec_helper'

describe "tuitions/index" do
  before(:each) do
    assign(:tuitions, [
      stub_model(Tuition,
        :transfer_request => "Transfer Request",
        :first_term_reduction => "First Term Reduction",
        :second_term_reduction => "Second Term Reduction",
        :scholarship_division => "Scholarship Division",
        :loan_amount => "Loan Amount",
        :memo => "Memo"
      ),
      stub_model(Tuition,
        :transfer_request => "Transfer Request",
        :first_term_reduction => "First Term Reduction",
        :second_term_reduction => "Second Term Reduction",
        :scholarship_division => "Scholarship Division",
        :loan_amount => "Loan Amount",
        :memo => "Memo"
      )
    ])
  end

  it "renders a list of tuitions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Transfer Request".to_s, :count => 2
    assert_select "tr>td", :text => "First Term Reduction".to_s, :count => 2
    assert_select "tr>td", :text => "Second Term Reduction".to_s, :count => 2
    assert_select "tr>td", :text => "Scholarship Division".to_s, :count => 2
    assert_select "tr>td", :text => "Loan Amount".to_s, :count => 2
    assert_select "tr>td", :text => "Memo".to_s, :count => 2
  end
end