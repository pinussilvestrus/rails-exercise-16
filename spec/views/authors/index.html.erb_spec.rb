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

  it "renders a link to new authors page" do
    render
    assert_select "a", :text => "Add author"
  end

  it "renders a link to the authors edit page" do
    render
    assert_select "a", :text => "Edit"
  end

  it "renders a link to delete an author" do
    render
    assert_select "a", :text => "Destroy"
  end
end
