require 'rails_helper'

RSpec.describe "papers/index", type: :view do
  before(:each) do
    assign(:papers, [
      Paper.create!(
        :title => "Title",
        :venue => "Venue",
        :year => "1999"
      )
    ])
  end

  it "renders all papers listing" do
    render
    assert_select "tr>th", :text => "Title".to_s, :count => 1
    assert_select "tr>th", :text => "Venue".to_s, :count => 1
    assert_select "tr>th", :text => "Year".to_s, :count => 1
  end

  it "renders a link to new papers page" do
    render
    assert_select "a", :text => "Add paper"
  end

  it "renders a link to the paper edit page" do
    render
    assert_select "a", :text => "Edit"
  end

  it "renders a link to delete a paper" do
    render
    assert_select "a", :text => "Destroy"
  end
end
