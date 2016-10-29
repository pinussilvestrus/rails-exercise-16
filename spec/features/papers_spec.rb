require 'rails_helper'

describe "Papers features", :type => :feature do

  it "should render'" do
    visit new_paper_path
    expect(page).to have_text("Creating new paper")
  end
  
end
