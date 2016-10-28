require 'rails_helper'

RSpec.describe "authors/index", type: :view do
  before(:each) do
    assign(:authors, [
      Author.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :homepage => "Homepage"
      )
    ])
  end

  it "renders all authors listing" do
    render
    assert_select "tr>th", :text => "Name".to_s, :count => 1
    assert_select "tr>th", :text => "Homepage".to_s, :count => 1
  end
end
