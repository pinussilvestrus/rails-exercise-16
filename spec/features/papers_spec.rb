require 'rails_helper'

describe "Papers features", :type => :feature do

  it "should render'" do
    visit new_paper_path
    expect(page).to have_text("Creating new paper")
  end

  it "Paper should have title, venue, and year" do
    @paper = Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460", year: 1950)
    expect(@paper).not_to be_nil
    expect(@paper.year).equal?(1950)
  end
end
