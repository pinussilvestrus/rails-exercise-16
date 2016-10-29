require 'rails_helper'

RSpec.describe "papers/show", type: :view do
  before(:each) do
    @paper = assign(:paper, Paper.create!(
      :title => "Title",
      :venue => "Venue",
      :year => "1999"
    ))
  end

  it "renders authors" do
    render
    assert_select "h2", :text => "Authors".to_s
  end
end
